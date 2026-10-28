---
name: prd
description: Write a product requirements document that starts from the problem and the evidence for it. Use when the user asks for a PRD, a product spec, a requirements doc or a feature one-pager, says "write this up for engineering", "spec this out" or "what should this feature do", or arrives with a solution and needs it turned into something the team can build.
argument-hint: "[feature or problem, or paste notes, research or data]"
---

# Product requirements document

A good PRD makes three things clear enough for design and engineering to argue about the how: the problem and who has it, the bet we are making, and the number that tells us whether the bet paid off. It runs to two to four pages, and anyone on the team can read the first half page and explain why this is worth building.

The usual failure is a feature list dressed as a PRD: twenty requirements, no evidence that anyone has the problem, and a goal like "improve engagement" with no baseline. The second is filling the evidence gap with invented numbers. A PRD with an honest [TBC] in the evidence section is more useful than one with a made-up statistic.

## Input

A feature idea, a problem statement, research notes, analytics, support ticket counts, a sales request or a Slack thread. Before asking anything, look in the project with Glob for research notes, interview syntheses, metric definitions and earlier PRDs (for example `**/*prd*.md`, `**/research/**`, `**/*interview*`). If a PRD for the same feature exists, update it and keep its decisions and open questions.

## Ask first when the input is thin

The evidence and the metric matter most, so always ask for them when they are missing. In one message, at most:

1. What problem does this solve, and for which users? Roughly how many of them?
2. How do we know they have it? Name the source: data, support tickets, interviews, lost deals, one customer's request, or a hunch.
3. Which metric should move if this works, and what is it today?
4. What is fixed: a date, a team size, a platform, a regulation?
5. What has already been decided, and by whom?

Infer the product area, platform and user type from the request and the project files instead of asking. If the user arrives with a solution ("add a chatbot"), ask what problem it solves before writing anything else. If the user says "just draft it", draft with [TBC] in every gap, write "None given" as the evidence strength, set the status to "Not ready for build", and list your assumptions at the end.

## Rules

- **The problem statement contains no solution words.** If the feature's name appears in it, rewrite it. "Finance admins spend the first two days of every month-end chasing missing receipts" is a problem. "Users need automatic receipt reminders" is a solution.
- **Name the evidence and how strong it is.** Four levels, weakest first. Anecdote: one to three mentions, a single customer's request, internal opinion. Pattern: the same problem across five or more interviews, or a counted set of support tickets. Behavioural data: analytics across the segment. Experiment: a test with a control group. Say which levels you have. Never write a user quote that is not in the input.
- **Two to four goals, and at least two non-goals.** A non-goal is something a reasonable reader would expect to be in scope that we are deliberately leaving out, with the reason.
- **One primary metric, up to three secondary, one to three guardrails.** Every metric has a baseline, a target, a date and a data source. Dates are absolute ("Wed 31 Mar 2027") or tied to launch ("30 days after 100% rollout"). A guardrail is something that must not get worse, with the threshold that would make us stop or roll back. If a baseline is unknown, write [TBC] and add "Measure the baseline" as an open question that blocks the build.
- **The solution outline says what users can do, not what the screens look like.** Leave layout and architecture to design and engineering unless there is a real constraint, and say why the constraint exists. Link designs if there are any.
- **Requirements are numbered, testable and prioritised.** Must: the release fails its primary metric or breaks a rule without it. Should: important, but a workaround exists. Could: first to cut. If more than about 60% of the requirements are Musts, the scope has not been prioritised yet. Say so.
- **Cover all four product risks.** Value: will they use it or pay for it? Usability: can they work out how? Feasibility: can we build it with this team, time and technology? Viability: does it work for the business (legal, finance, sales, support, brand)? For each, state the assumption, how confident we are and the cheapest test. Mark the riskiest one. It gets tested first.
- **Every open question has an owner and a date.** A question with no owner stays open until it blocks the build.
- **Rollout is part of the PRD.** Say how it reaches users: feature flag, beta cohort, percentage steps, and what would make us roll back. For anything bigger than a small change, point to /launch-plan.
- **Two to four pages.** If it runs longer, the problem is usually not clear yet.

## Output

````markdown
# [Feature or problem name]

**Status:** Draft / In review / Approved / Not ready for build · **Owner:** [PM] · **Last updated:** [date]
**Team:** [design lead, engineering lead] · **Links:** [designs, research, tickets]

## Problem
[One paragraph. Who has the problem, what happens today, how often, and what it costs them. No solution words.]

## Evidence
| Source | What it shows | Strength |
|--------|---------------|----------|
| [source and date] | [finding, with numbers] | Anecdote / Pattern / Behavioural data / Experiment |

**Overall:** [one line on how strong the case is, and what would make it stronger]

## Goals
1. [Outcome for users or the business]

## Non-goals
- [What a reader might expect to be included, and why it is out]

## Success metrics
| Metric | Type | Baseline | Target | By | Source |
|--------|------|----------|--------|----|--------|
| [name] | Primary | [value, period] | [value] | [date] | [tool or table] |
| [name] | Guardrail | [value, period] | [stop if worse than] | [date] | [tool or table] |

## Solution outline
[What the user can do once this ships, in three to six sentences. Constraints, and why they exist.]

## Requirements
| ID | Requirement | Priority | Notes |
|----|-------------|----------|-------|
| R1 | [testable statement] | Must / Should / Could | [rule, edge case, dependency] |

## User flow
1. [Step]
2. [Step]

**Unhappy paths:** [what happens when it fails, the user cancels, or data is missing]

## Risks and assumptions
| Risk | Assumption | Confidence | Cheapest test | Owner |
|------|------------|------------|---------------|-------|
| Value | [we assume...] | High / Medium / Low | [test] | [name] |
| Usability | | | | |
| Feasibility | | | | |
| Viability | | | | |

**Riskiest assumption:** [which one, and the test we run first]

## Open questions
- [Question] (owner: [name], answer by [date])

## Rollout
[Flag, beta cohort, percentage steps, rollback trigger, launch tier if known]

## Assumptions made in this draft
- [Only when you drafted with gaps]
````

Leave out "Assumptions made in this draft" when nothing was assumed. Keep every other section, and write [TBC] rather than delete a section that has no content yet.

After the PRD, offer once: "Want me to break the Musts into user stories, or draft the launch plan?"

## Example

Input:

```
PRD for receipt reminders in Tallybook. sep data: 38% of expense lines have no receipt on day 1 of month-end close (1,240 companies). 9 of 12 finance admins we interviewed said chasing receipts is the worst part of close. ~85 support tickets a month tagged "receipt". want missing receipts down to 15% by end of Q1. don't want notification opt-outs going up, currently 4.1%.
```

Output (excerpt):

```markdown
## Problem
Finance admins at Tallybook customers start month-end close with more than a third of expense lines missing a receipt. They have to chase employees for receipts before they can close the books.

## Evidence
| Source | What it shows | Strength |
|--------|---------------|----------|
| Analytics, Sep 2026, 1,240 companies | 38% of expense lines have no receipt on day 1 of close | Behavioural data |
| Interviews, Sep 2026 | 9 of 12 finance admins named receipt chasing as the worst part of close | Pattern |
| Support tickets | About 85 a month tagged "receipt" | Pattern |

**Overall:** Strong on the size of the problem. Nothing yet shows that reminders, rather than another fix, will close the gap. That is the riskiest assumption.

## Success metrics
| Metric | Type | Baseline | Target | By | Source |
|--------|------|----------|--------|----|--------|
| Expense lines with no receipt on day 1 of close | Primary | 38% (Sep 2026) | 15% | Wed 31 Mar 2027 | [TBC] |
| Notification opt-out rate | Guardrail | 4.1% | Stop if above [TBC] | Wed 31 Mar 2027 | [TBC] |
| Support tickets tagged "receipt" | Secondary | About 85 a month | [TBC] | Wed 31 Mar 2027 | Support tool |
```

## Checks before you hand it over

- The problem statement has no solution words, and every evidence row names its strength.
- Every metric has a baseline, a target, a date and a source, or [TBC] with an open question to fill it.
- No quote, number, research finding or customer name appears that is not in the input.
- There are at least two non-goals and at least one guardrail.
- All four risks are covered, and one is marked as the riskiest.
- Every open question has an owner, or is marked [owner?].
