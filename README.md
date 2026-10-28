# PM Agent

**A Claude Code plugin for people who run projects and products.** Pick your role with `/role`, and Claude works the way a good project manager, product manager, agile coach or scrum master would: it asks the right questions, uses your team's vocabulary, and hands back documents you can paste straight into Jira, Confluence, Notion or an email.

```text
> /role scrum-master
Role set to Scrum master. It is saved for this project and loads in every new session.

> /retro  the team is tired, two people left this sprint, last three retros were Start/Stop/Continue
```

33 skills: 29 across the four roles and 4 that every role shares. Free and open source under the MIT License.

## Who it's for

- **Project managers** who write charters, schedules, RAID logs and status reports every week.
- **Product managers and product owners** who write PRDs and stories, and have to say no to most of the backlog.
- **Agile coaches** who run health checks, design workshops and coach teams and leaders.
- **Scrum masters** who prepare sprint events, chase impediments and make sense of sprint data.
- Anyone who does a bit of all four, which is most people in these jobs.

You don't need to be technical. If you can type a message, you can use it.

## How it works

The idea is simple: an agent is a prompt, plus tools, plus skills that load when they are needed.

| Part | In PM Agent |
|------|-------------|
| **Prompt** | Each role has a lens: what to pay attention to, the vocabulary, and sensible defaults. A project manager thinks in baselines and owners. A product manager thinks in problems, outcomes and evidence. `/role` switches the lens. |
| **Tools** | Claude reads your notes, backlogs and logs in the project folder, writes documents back to it, and (for competitor research) searches the web. |
| **Skills** | 33 skills, each a plain Markdown file. Claude sees only a one-line description of each until your request matches one, then loads the full skill. Each one asks clarifying questions when your input is thin, follows a tested template, and never makes up names, dates or numbers. |

Your role is saved per project in `.claude/pm-agent.local.md`, so the next time you open Claude Code in that folder it is still a scrum master, or whatever you picked.

## Install

You need [Claude Code](https://code.claude.com). PM Agent works in the terminal, the desktop app and the IDE extensions. It was tested on Claude Code 2.1.310.

Inside Claude Code, run:

```text
/plugin marketplace add karlisvorslovs/pm-agent
/plugin install pm-agent@pm-agent
```

Or from your shell:

```bash
claude plugin marketplace add karlisvorslovs/pm-agent
claude plugin install pm-agent@pm-agent
```

Start a new session (or run `/reload-plugins`) and type `/role`.

**Try it without installing:**

```bash
git clone https://github.com/karlisvorslovs/pm-agent.git
cd your-project
claude --plugin-dir ../pm-agent
```

**Windows:** the role switch and the session hook are small bash scripts. They run in Git Bash, which Claude Code on Windows normally uses. Everything else works without it.

## Quick start

Open Claude Code in the folder you keep project notes in (any folder works), then:

```text
/role                     show the current role and the options
/role pm                  project manager
/role product             product manager (product owners too)
/role agile-coach         agile coach
/role scrum-master        scrum master
/role off                 clear the role
```

Short names work as well: `sm`, `scrum`, `po`, `coach`, `project`. Note that `pm` means project manager. For product manager, use `product`.

Then just ask for what you need. You can type the skill name, or describe the job and Claude picks the skill:

```text
/status-report  Project Atlas, week 6. Data migration slipped a week...
write user stories for the bulk invoice export, here's the PRD: docs/prd-invoices.md
what could go wrong with launching on 1 Feb?
```

If you leave things out, the skill asks. If you'd rather it didn't, say "just draft it" and it fills the gaps with `[TBC]` and lists what it assumed.

## Skills

### Project manager (`/role pm`)

| Command | What you get |
|---------|--------------|
| `/project-charter` | A project charter: objectives, scope in and out, milestones, budget, governance, risks and sign-off. |
| `/wbs-schedule` | A work breakdown structure, three-point estimates, the critical path and a Gantt chart. |
| `/raid-log` | A RAID log (risks, assumptions, issues, dependencies) that it creates or keeps up to date. |
| `/status-report` | A one-page weekly status report with RAG status, milestones, risks and decisions needed. |
| `/stakeholder-plan` | A stakeholder map, engagement levels and a communications plan. |
| `/change-request` | A change request with impact on scope, time, cost and risk, options and a recommendation. |
| `/lessons-learned` | A plan for a blameless lessons-learned session, or a write-up of one with owned actions. |

### Product manager (`/role product`)

| Command | What you get |
|---------|--------------|
| `/prd` | A product requirements document: problem, evidence, goals, metrics, requirements, risks. |
| `/user-stories` | User stories split the right way, with Given / When / Then acceptance criteria. |
| `/prioritise` | A ranked list using RICE, MoSCoW or Kano, with the arithmetic shown and what gets cut. Asking it to "prioritize" works too. |
| `/roadmap` | An outcome-based Now / Next / Later roadmap, with versions for different audiences. |
| `/discovery-interview` | An interview guide that gets real answers, plus a template to pull out patterns afterwards. |
| `/metrics-tree` | A North Star metric, the input metrics under it, guardrails and definitions. |
| `/launch-plan` | A launch plan: tier, readiness checklist, rollout, go/no-go criteria and rollback. |
| `/competitor-teardown` | A competitor analysis with sources, a comparison table and what it means for you. |

### Agile coach (`/role agile-coach`)

| Command | What you get |
|---------|--------------|
| `/team-health-check` | A health check to run with a team, and a read-out of the results in the team's own words. |
| `/maturity-assessment` | An agile maturity assessment by dimension, with evidence and next experiments. |
| `/working-agreements` | A session plan for working agreements, and agreements written as real behaviours. |
| `/coaching-conversation` | A plan for a one-to-one coaching conversation, with questions for each stage. |
| `/workshop-design` | A workshop with a purpose, outcomes, a timed agenda, activities and a remote version. |
| `/transformation-roadmap` | A roadmap for changing how teams work, built from experiments with measures. |

### Scrum master (`/role scrum-master`)

| Command | What you get |
|---------|--------------|
| `/sprint-planning` | Capacity worked out, a Sprint Goal and a forecast that fits. |
| `/backlog-refinement` | Items checked against the Definition of Ready, split, and questions for the Product Owner. |
| `/standup` | A better Daily Scrum, or a summary of one with blockers and follow-ups. |
| `/sprint-review` | A Sprint Review that works as a working session with stakeholders, not a demo show. |
| `/retro` | A retro format chosen for your team's situation, and at most three owned actions. |
| `/impediment-log` | An impediment log with ageing and escalation, created or kept up to date. |
| `/sprint-metrics` | A plain read-out of velocity, burndown and carry-over, with honest caveats. |
| `/definition-of-done` | A Definition of Done and a Definition of Ready, ready to paste into your tools. |

### Every role

| Command | What you get |
|---------|--------------|
| `/meeting-actions` | Meeting notes or a transcript turned into decisions, owned actions and a recap to send. |
| `/decision-log` | Decisions recorded with the options that lost and why, so the argument doesn't restart. |
| `/stakeholder-update` | An email or Slack update with the point and the ask up front, including bad news. |
| `/risk-check` | A quick pre-mortem: the five things most likely to hurt this plan, with warning signs. |

Every skill works in every role. The role decides the lens and which skills `/role` suggests. If another plugin already uses one of these names, use the full name, for example `/pm-agent:retro`.

## Examples

The [examples](examples/) folder has real outputs, each with the prompt that produced it:

- [Switching roles](examples/role-switching.md), including the role loading in a new session
- [Weekly status report](examples/project-manager-status-report.md) (project manager)
- [Prioritising a quarter with RICE](examples/product-manager-prioritise.md) (product manager)
- [A thin PRD request, answered with questions](examples/product-manager-prd-thin-input.md) (product manager)
- [Team health check read-out](examples/agile-coach-team-health-check.md) (agile coach)
- [Retro after a missed Sprint Goal](examples/scrum-master-retro.md) (scrum master)

A short excerpt, from the RICE example:

```markdown
| Rank | Item | Reach /qtr | Impact | Confidence | Effort (PM) | Working | Score |
|---|---|---|---|---|---|---|---|
| 1 | Bulk CSV export | 1,200 | 2 (high) | 80% | 1 | 1,200 × 2 × 0.8 ÷ 1 | 1,920 |
| 2 | Recurring invoices | 2,500 | 3 (massive) | 80% | 4 | 2,500 × 3 × 0.8 ÷ 4 | 1,500 |
| 3 | Dark mode | 3,000 | 0.25 (minimal) | 50% | 0.5 | 3,000 × 0.25 × 0.5 ÷ 0.5 | 750 |
```

## Project notes

The role file `.claude/pm-agent.local.md` has room for notes. Anything you write under the comment loads at the start of every session, together with the role. Keep it short:

```markdown
---
role: scrum-master
updated: 2026-10-28
---

Team: 5 developers, 1 designer, 1 QA. Two-week sprints starting Mondays.
Tools: Jira for the backlog, Confluence for docs.
Product Owner: Rita Okafor. Stakeholder review every second Thursday.
```

If the role is personal, add `.claude/*.local.md` to your `.gitignore`. If the whole team should share it, commit it.

## Using the role agents directly

Each role is also a subagent, so you can hand it a whole job:

```text
@agent-pm-agent:product-manager read docs/research/ and draft a PRD for the top problem
```

Or run a whole session as one role, regardless of the saved role:

```bash
claude --agent pm-agent:scrum-master
```

## Privacy

PM Agent has no servers and collects nothing. The skills are text files that Claude reads. The only things it writes are the role file and any documents you ask it to save, all inside your project folder. Your prompts go to Claude in the same way as everything else you do in Claude Code. The competitor teardown skill uses web search when you ask it to.

## Testing

Every skill has test prompts in [`evals/`](evals/): one with thin input (the skill should ask, not invent) and one with realistic detail (the output should follow the template and get the judgement right). Run them with Claude Code's built-in eval runner:

```bash
claude plugin eval . --runs 1 --ablation none --judge-model sonnet --allow-tools "Bash(bash *)"
```

The `--allow-tools` grant lets the `/role` cases run the role script inside the eval sandbox. `--judge-model sonnet` is worth the extra cost: the rich-input cases check several things at once, and the default judge model fails good answers on them more often. Each case is a real model call on your account, roughly 10 to 30 US cents per case per run at the time of writing, or about $15 for the whole suite at one run each. Use `--case 'retro-*'` to run one skill.

## Troubleshooting

- **`/role` says the command is unknown.** Start a new session or run `/reload-plugins` after installing. Check `/plugin` shows pm-agent as enabled.
- **The role doesn't load in a new session.** Make sure you start Claude Code in the same folder where you set it. The role lives in that folder's `.claude/pm-agent.local.md`.
- **A skill name clashes with another plugin.** Use the full name, such as `/pm-agent:roadmap`.
- **You want different templates.** Fork the repo and edit the `SKILL.md` files. They are plain Markdown.

## Contributing

New skills, better templates and bug reports are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for the skill format, the writing style, and how to add test prompts.

## License

[MIT](LICENSE). Made by [Codnity](https://codnity.com).
