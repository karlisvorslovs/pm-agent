---
name: transformation-roadmap
description: Build a ways-of-working change roadmap across teams, phased as experiments with clear measures. Use when the user asks for an agile transformation plan, a ways-of-working roadmap, an operating model change, "how do we scale agile", or has been asked to roll out a framework across several teams or the whole organisation.
argument-hint: "[organisation or area, the problem, and what's been tried]"
---

# Transformation roadmap

Changing how a group of teams works is a series of experiments, not a rollout. A good roadmap starts with the problem the change solves in business terms, describes the target as behaviours you could observe, and moves through phases that each earn the next. It says what will be measured, who sponsors it, and what is deliberately left out.

Most transformations fail in one of three ways. The goal is the framework ("everyone on SAFe by Q2") rather than an outcome. Everyone changes at once, so nobody learns what worked. Or teams change while the system around them stays the same (annual project funding, approval boards, how leaders ask for status), and old habits return within a year.

## Input

The problem, the shape of the organisation (teams, people, products, locations), what has been tried, the sponsor's goals and promises, constraints (budget, regulation, deadlines), and any data. Read assessments, health check summaries or earlier plans in the project first (Glob `**/*assessment*`, `**/*health*`, `**/*roadmap*`).

## Ask first when the input is thin

Ask in one message, at most:

1. What problem should this solve, in business terms? Slow time to market, quality, people leaving, unpredictable delivery? Why now?
2. How big is the scope: teams, people, products, locations?
3. Who sponsors it, and what have they already promised or announced?
4. What has been tried before, and what happened?
5. What data exists today: cycle time, release frequency, incidents, engagement survey, customer measures?

If the user says "just draft it", mark the problem and every baseline [TBC], make the first phase a 4 to 6 week discovery that fills them in, and list your assumptions.

## How to build it

- **Problem first, in numbers where possible.** "Customer requests take a median of 120 days to reach production, and two renewals were lost over it" beats "we need to be more agile". If nobody can say what the problem is, the first phase finds out.
- **Target state as behaviours and outcomes.** Not "all teams do Scrum". Write what you would see: "A team can take a small customer request to production in under two weeks without waiting for another team." "Product managers stop a feature when usage data says so." Three to seven statements, each observable.
- **Baseline before change.** Pull 90 days of history, or measure for 4 to 8 weeks, before the pilot starts. Without a baseline you can't tell whether anything worked.
- **Guiding principles.** Four to six lines the sponsor will defend when it gets hard. For example: invite, don't mandate. Start where the pain is. Change the system around teams, not only the teams. Measure outcomes, not adoption. Leaders change first.
- **Phases built from experiments, moved on evidence.** Each phase has an exit test, not just an end date: "We expand when pilot teams' 85th percentile cycle time is down by a third and the teams want to carry on."
- **Experiment format.** We believe [change] for [whom] will lead to [outcome]. We'll know when [signal] by [review date]. Owner: [name].
- **Framework-agnostic.** Pick practices that solve the stated problem. Scrum, Kanban, SAFe, LeSS and Shape Up each fit somewhere. If a framework has already been chosen, treat its parts as experiments and keep the outcome measures.

## Phases

| Phase | Typical length | What happens |
|---|---|---|
| Discover | 4 to 6 weeks | Baseline, maturity assessment, interviews, pick pilots. Skip it if the data exists |
| Pilot | 3 to 4 months | 2 or 3 volunteer teams with a real problem and a supportive manager. Not the best team, not the worst |
| Expand | 6 to 12 months | Spread what worked, by invitation, in waves of 3 to 5 teams. Fix the system constraints the pilot found: funding, approvals, environments |
| Sustain | Ongoing | Internal coaches, communities of practice, ownership handed to the organisation. External coaches step out |

## Measures

Few measures, three groups, trends rather than targets:

- **Flow:** cycle time (median and 85th percentile), throughput per week, work in progress, lead time from request to release. Deployment frequency and change failure rate where software is involved.
- **People:** health check trends (summaries, shared with the teams' consent), regretted attrition, two or three engagement survey items.
- **Customer and business:** the outcome tied to the problem, such as time to fix a customer issue, renewal rate, adoption of new features.

Never use these to compare or rank teams; once a measure becomes a target, people manage the measure. Avoid vanity measures: people trained, teams "converted", percentage on the framework.

## Sponsorship and stakeholders

- **One executive sponsor** who attends the monthly review, removes system blockers (funding, policy, structure) and changes their own behaviour first, for example how they ask for status. A sponsor who delegates and disappears is a risk; write it down.
- **Middle managers are the key stakeholders.** Their jobs change most. Involve them before the pilot, and describe their new role in concrete terms: removing impediments, growing people, improving the system.
- **Finance, HR, architecture, security and compliance** own the system teams work inside. Bring each in by the Expand phase at the latest.

## Common risks

- **Agile theatre:** new names, same behaviour. Measure outcomes, not adoption.
- **Change fatigue:** stop one thing for every new thing.
- **Funding unchanged:** annual fixed-scope projects pull teams back. Work with finance on a pilot budget per team or product.
- **Sponsor leaves:** have a second sponsor and a written quarterly summary.
- **Coach dependency:** grow internal coaches from the pilot onwards.

## Output

````markdown
# Ways of working roadmap: [organisation or area], [date]

**Sponsor:** [name] · **Scope:** [teams, people] · **Author:** [name] · **Next review:** [date]

## The problem
[Two to four sentences, in business terms, with numbers from the input or [TBC]]

## Where we are now
- [Observation with evidence and source]

## Where we want to be
- [Observable behaviour or outcome]

## Guiding principles
1. [Principle]

## Phases
### [Phase name], [start date] to [end date or exit test]
**Goal:** [one line]
| Experiment | Hypothesis | Owner | Start | Review on | Signal |
|---|---|---|---|---|---|
**Exit test:** [evidence needed to move on]

## Measures
| Measure | Baseline | Source | Reviewed |
|---|---|---|---|
| [Cycle time, 85th percentile] | [value or [TBC]] | [tool] | [monthly] |

## Sponsorship and stakeholders
| Who | Role in the change | What they need | How we involve them |
|---|---|---|---|

## Risks
| Risk | Early sign | Response |
|---|---|---|

## What we are deliberately not doing
- [Item and why]

## Review cadence
- Monthly, 60 minutes with the sponsor: measures, experiments, blockers, decisions.
- Quarterly: re-plan this roadmap.
- Teams: their own retros.

## Gaps and assumptions
- [TBC items]
````

## Example

Input:

```
Northlake Insurance, claims IT. 9 teams, ~85 people. releases quarterly, change board weekly.
median lead time from request to prod ~140 days (jira, last 12 months)
2 teams had scrum training last year, run sprints but still release quarterly
CIO Helen Brandt sponsors it, wants faster claims features in 2027
```

Output (excerpt):

```markdown
## The problem
Claims features take a median of about 140 days from request to production. Releases are quarterly, so a finished feature can wait up to three months. Two teams now run sprints, but they still release quarterly, so the wait is unchanged.

## Where we want to be
- A pilot team can release a small claims change to production in under [30] days from request.
- [Proposal] The change board reviews by risk; low-risk changes need no board slot.

## Phases
### Pilot, Mon 11 Jan 2027 to Fri 30 Apr 2027
**Goal:** Prove that 2 teams can release monthly without more incidents.
| Experiment | Hypothesis | Owner | Start | Review on | Signal |
|---|---|---|---|---|---|
| Monthly releases for 2 volunteer teams (the sprint teams are candidates) | Smaller releases will cut lead time without raising incidents | [TBC] | Mon 11 Jan 2027 | Mon 1 Mar 2027 | Lead time falls; incident count [TBC] baseline |
**Exit test:** Pilot lead time down by a third, no rise in incidents, teams want to continue.

## What we are deliberately not doing
- No framework mandate across all 9 teams.
- No reorganisation during the pilot.
- No new tools until the process works on a simple board.
```

## Checks before you hand it over

- The problem is in business terms, and the target is written as behaviours and outcomes, not framework adoption.
- Every phase is made of experiments with owners or [TBC], review dates with the correct weekday, and an exit test.
- Every baseline comes from the input or is [TBC]. Nothing is invented.
- Measures include flow, people and customer outcomes, and none is used to rank teams.
- There is a "not doing" list and a review cadence.
