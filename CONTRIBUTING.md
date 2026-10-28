# Contributing to PM Agent

Thanks for helping. PM Agent is only as good as its skills, so most contributions are new skills, better templates, or fixes to advice that is wrong or out of date.

## Ways to help

- **Report a bad output.** Open an issue with the prompt you used, the role you had set, and what was wrong. A wrong date calculation or an invented owner is a bug.
- **Improve a skill.** Sharper rules, a better template, a more realistic example.
- **Add a skill.** Open an issue first with the name, the role it belongs to, and two or three prompts a real person would type. That avoids two people writing the same thing.
- **Add an eval case.** Every skill should have a case for thin input and a case for rich input. More edge cases are welcome.

## How the plugin is laid out

```text
pm-agent/
├── .claude-plugin/
│   ├── plugin.json          # the manifest
│   └── marketplace.json     # lets people install the repo with /plugin marketplace add
├── agents/                  # one file per role: the role's lens, tools and skills
├── skills/
│   ├── shared/              # /role and the skills every role uses
│   ├── project-manager/
│   ├── product-manager/
│   ├── agile-coach/
│   └── scrum-master/
├── hooks/hooks.json         # SessionStart hook that loads the active role
├── scripts/                 # role.sh, session-start.sh and their shared helpers
├── evals/                   # test prompts for every skill, one folder per case
└── examples/                # real outputs from the skills
```

A skill belongs to the role whose folder it sits in. `/role` lists skills by reading these folders, so moving a skill to another folder moves it to another role.

## Anatomy of a skill

Each skill is one folder with a `SKILL.md`. Use [`skills/shared/meeting-actions/SKILL.md`](skills/shared/meeting-actions/SKILL.md) as the model. Keep `SKILL.md` between 100 and 250 lines. If you need more, move reference material into a second file in the same folder and link to it.

### Frontmatter

```yaml
---
name: status-report            # same as the folder name
description: Write a weekly project status report with RAG status, progress, risks and decisions needed. Use when the user asks for a status report, a weekly update, a steering group update, or pastes notes from the week.
argument-hint: "[project name, or paste your notes]"
---
```

- `name` must match the folder name. It is also the slash command, so `/status-report` works without the plugin prefix.
- `description` is one line. The first sentence says what the skill produces, in under 100 characters, and ends with a full stop. `/role` shows that first sentence in its skill list. The rest says when to use it, including words people actually type.
- Avoid names that clash with built-in Claude Code commands such as `/status`, `/review`, `/init` or `/plan`.

### Body sections, in this order

1. **Title and a short opening.** Two to four sentences: what a good one of these does, and the most common way it goes wrong. Be concrete.
2. **Input.** What the user usually gives, and which project files to read first.
3. **Ask first when the input is thin.** Up to five numbered questions, asked in one message. Say what to infer instead of asking, and what to do when the user says "just draft it" (draft with [TBC] placeholders and list assumptions).
4. **Rules** (or **How to build it**). Opinionated, specific guidance with bold lead-ins. Numbers beat adjectives: "three to eight actions", "15 minutes", "score 1 to 5".
5. **Output.** The template in a fenced Markdown block. Use four backticks for the outer fence if the template contains code blocks.
6. **Example.** A short, realistic input and the output it should produce, or an excerpt of it.
7. **Checks before you hand it over.** Three to six bullets the model checks before replying.

Skills that maintain a living document (a RAID log, a decision log, an impediment log) should look for an existing file with Glob first and update it, rather than start a new one.

## Writing style

Everything in this repo is read by people, and most of it is also read by a model that will copy its tone. So:

- Plain words, short sentences, active voice.
- **No em dashes.** Use a comma, a full stop, a colon or brackets.
- No filler or AI-sounding words: delve, leverage, seamless, robust, game changer, unlock, empower, elevate, holistic, synergy, cutting-edge, "in today's fast-paced world", "it's important to note".
- British spelling (prioritise, organisation, behaviour). Skill names and terms people search for can mention both spellings in the description.
- Dates are absolute, like "Fri 6 Nov 2026". Check the weekday is right.
- Examples use realistic but invented names and companies. No real clients, no real people.
- Never tell the model to invent numbers, quotes, names or research. Gaps are marked [TBC].

Run this before you open a pull request. It should print nothing:

```bash
grep -rnE "—|–|\b(delve|leverage|seamless|robust|game.?changer|unlock|empower|elevate|holistic|synergy|cutting.edge)\b" --include="*.md" --include="*.yaml" --include="*.json" . | grep -vE "CONTRIBUTING.md|No filler such as"
```

(The second grep skips this file and the line in each role agent that lists the banned words on purpose.)

## Eval cases

Each skill has test prompts in `evals/<role>/<skill>-<case>/case.yaml`. They run with [`claude plugin eval`](https://code.claude.com/docs/en/plugin-evals), which starts a clean session with only this plugin loaded, sends the prompt, and grades the reply.

Every skill needs at least:

- **A thin-input case.** A vague request. The grader passes if the reply asks useful questions and does not invent facts.
- **A rich-input case.** A realistic request with enough detail. Graders check that the skill fired, that the key sections of the template are there, and that nothing was made up.

A case looks like this:

```yaml
schema_version: "1.1"
name: status-report-rich-input
description: A week of notes with one slipped milestone. Expect an amber status with a recovery option.
tags: [project-manager, status-report]
execution:
  max_turns: 8
  allowed_tools: [Read, Glob, Grep, Skill]
  prompt: |
    Write the weekly status report for Project Atlas. ...
graders:
  - name: skill-fired
    type: tool_used
    tool: Skill
    input_match: '"skill"\s*:\s*"(?:[\w-]+:)?status-report"'
  - name: has-rag
    type: regex
    pattern: '\b(Red|Amber|Green)\b'
  - name: amber-with-options
    type: llm
    criteria: |
      PASS if the overall status is Amber and the report gives at least two recovery options with a recommendation.
      FAIL if the status is Green, or if the report invents dates or names that are not in the prompt.
```

Write prompts the way a person would type them. Don't name the skill in the prompt, except where the case is about the slash command itself.

Run the suite, or one case, from the repo root:

```bash
claude plugin eval . --case 'status-report-*' --runs 1 --ablation none --judge-model sonnet
```

The `/role` cases also need `--allow-tools "Bash(bash *)"`, so the role script can run inside the eval sandbox.

Every run is a real model call on your account. Use `--case` and `--runs 1` while you iterate. If an `llm` grader fails, read the reply before you change the skill: the rubric may be the problem. A common one is a FAIL rule that matches a phrase the reply only mentions as something to avoid.

## Testing your change by hand

```bash
claude plugin validate .
claude --plugin-dir .
```

Then try `/role`, `/role <your role>`, and your skill with a thin prompt and a rich one.

## Pull requests

- One skill or one fix per pull request.
- Say which role it is for and paste one real output.
- Add a line to `CHANGELOG.md` under "Unreleased".

By contributing you agree that your work is released under the MIT License.
