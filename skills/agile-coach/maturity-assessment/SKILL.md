---
name: maturity-assessment
description: Assess agile maturity per dimension, with observable levels, evidence and sequenced experiments. Use when the user asks for an agile maturity assessment, a ways-of-working baseline, "how agile are we", a capability review before a transformation, or wants to make sense of interview notes, observations and flow metrics across teams.
argument-hint: "[teams or area in scope, or paste your notes and metrics]"
---

# Agile maturity assessment

A maturity assessment describes how a team or group works today, one dimension at a time, with evidence, so people can decide what to improve first. A good one is specific enough that the people assessed recognise themselves in it, and it ends with a short, ordered set of experiments rather than a grade.

The common failure is the single number. "Team Beacon is a 2.7" tells nobody what to do, starts an argument about the score instead of the work, and becomes a ranking the moment two teams are put side by side. The second failure is auditing a framework ("are they doing Scrum properly?") instead of looking at behaviours and outcomes.

## Input

Interview notes, observation notes, a metrics export from the tracker, artefacts (backlog, definition of done, release log, retro actions), or a request to plan an assessment. Search the project first with Glob (`**/*interview*`, `**/*retro*`, `**/*metrics*`, `**/*.csv`) and read what you find. An earlier assessment gives you a baseline.

## Ask first when the input is thin

Ask in one message, at most:

1. Which teams or area are in scope, and roughly how many people?
2. What prompted the assessment, and what decision will it feed? (A transformation plan, a budget request, a new coach's starting point.)
3. Who will see the findings, and do the teams know they are being assessed?
4. What evidence exists already: interview notes, tracker data, artefacts, survey results?
5. How much time is there? A light assessment of one team takes about a week. Three to six teams take three to four weeks.

With no evidence, produce the assessment plan (scope, evidence sources, interview guide, timeline) and the blank rubric, not findings. If the user says "just draft it", write the plan with [TBC] placeholders. Never assign a level without evidence.

## Dimensions and levels

Six default dimensions. Agree them with the sponsor and the teams before you start, then keep them stable so a second assessment can be compared with the first.

Levels, the same for every dimension:

1. **Ad hoc.** Depends on individuals. Practices are missing or inconsistent.
2. **Starting.** Practices exist, often followed mechanically or only in some places.
3. **Practising.** Practices are used consistently and people know why.
4. **Adapting.** The team changes its practices based on data and feedback.
5. **Shaping.** The team improves the wider system and helps others.

| Dimension | 1 Ad hoc | 2 Starting | 3 Practising | 4 Adapting | 5 Shaping |
|---|---|---|---|---|---|
| Team practices | A manager assigns work; no regular team events | Events happen but feel like status meetings; retro actions rarely done | The team plans together; retro actions tracked and mostly done | The team changes its own process from retro data | The team helps other teams improve, by invitation |
| Product ownership | Nobody decides priority; anyone adds work | A PO exists but needs sign-off for most decisions | One ordered backlog; the PO decides priority and says no | Priorities follow outcome data and customer evidence | Work that doesn't deliver outcomes gets stopped |
| Technical practices | Manual builds and testing | CI exists; tests patchy; long-lived branches | Automated tests in the pipeline; short-lived branches; tests in the definition of done | Deploys on demand; technical debt visible in the backlog | Small changes go to production safely many times a week |
| Flow and delivery | Work not visible; cycle time unknown | Board exists; lots in progress; nothing measured | Cycle time and throughput tracked; WIP limits used | Forecasts from throughput; blocked work cleared within days | Flow measured end to end, across teams |
| Leadership and culture | Leaders assign tasks and approve decisions | Leaders back agile in words; plans are still fixed scope and date | Leaders set goals and limits; teams decide how | Leaders remove system impediments and ask for data | Leaders change structure, funding and incentives to fit the work |
| Customer feedback loops | Team never meets users; feedback arrives as escalations | Feedback comes second hand, now and then | Team sees users or usage data at least monthly | Ideas tested with users before full build; usage tracked after release | Experiments run continuously and change decisions |

## Evidence sources

- **Interviews.** 30 to 45 minutes each, 6 to 12 people across roles: developers, testers, PO, scrum master, manager, one or two stakeholders. Ask for recent examples: "Tell me about the last piece of work that took much longer than expected." Report themes, never who said what.
- **Observation.** At least two events per team (planning, stand-up, review, retro) and, if possible, half a normal day. Write down what happened, not what the calendar says should happen.
- **Flow metrics.** The last 90 days from the tracker: cycle time as median and 85th percentile, throughput per week, work in progress, ageing items and, if you can get it, lead time from request to release. Use percentiles, not averages.
- **Artefacts.** Backlog, definition of done, release log, incident log, retro actions, roadmap. Check dates: when did the definition of done last change?
- **Short survey, optional.** 10 to 15 questions, anonymous, to check whether interview themes are widespread.

## Rules

- **Two sources per level.** A level needs at least two independent sources. With one source, mark confidence Low.
- **Ranges are honest.** "2 to 3" is fine. Say what would settle it.
- **Every finding cites its source.** "(interviews, metrics)" after each point. A finding with no source is an opinion; drop it or mark it [TBC].
- **No single score.** Never average dimensions into one number, for a team or for the whole area. If someone asks, explain that the average hides the one dimension that is holding everything back, and offer a one-line summary per dimension instead.
- **No ranking.** Each team gets its own findings. Leadership gets patterns by dimension, without team names: "two of three teams release monthly with three days of manual regression". Teams compared on a league table start managing the score.
- **Teams see their findings first.** Each team reads its own findings before anything goes upward, and can correct facts. Disagreement about a level is useful data; record it.
- **Not a framework audit.** A team that doesn't call it Scrum but releases weekly and talks to users every sprint is not "immature".
- **Recommendations are sequenced experiments.** Three to five, ordered by what unblocks what: make work visible before setting WIP limits; one ordered backlog before forecasting. Each has an owner, a start date, a review date four to six weeks later and a signal. Put suggested thresholds in square brackets, such as a WIP limit of [8], so the team sets the real number.

## Output

````markdown
# Agile maturity assessment: [scope], [date]

**Scope:** [teams, people] · **Period:** [dates] · **Assessed by:** [name]
**Evidence:** [n] interviews, [n] events observed, metrics [date] to [date], artefacts: [list]
**Who sees this:** [each team its own findings; leadership the patterns section, agreed on [date]]

## Summary
[Three to five sentences: the strongest dimension, the biggest constraint, the first experiment. No overall score.]

## Findings by dimension
### [Dimension]: level [n] or [n to n] · confidence [High / Medium / Low]
**What we saw**
- [Observation] ([source])
**What would move it up:** [one or two observable changes]

## Patterns across dimensions
- [How dimensions affect each other, e.g. manual testing caps release frequency, which caps customer feedback]

## Recommended experiments, in order
| # | Experiment | Dimension | Hypothesis | Owner | Start | Review on | Signal |
|---|---|---|---|---|---|---|---|
| 1 | [Change] | [Dimension] | [We believe X will lead to Y] | [Name or [TBC]] | [date] | [date] | [Observable result] |

## How to use this
- It describes a starting point, not a grade. It is not a ranking and not an input to performance reviews.
- Re-assess the same dimensions in [6 to 12] months.

## Gaps
- [Missing evidence, marked [TBC]]
````

## Example

Input:

```
payments team, 6 devs + PO (Agnese) + SM (Toms). 7 interviews, sat in planning and retro.
jira 90 days: median cycle time 11d, 85th pct 29d, ~5 items/week, WIP 14 to 16, no WIP limits
PO needs head of product sign-off for anything over 3 days of work
release every 3 weeks, 2 days manual regression
retro actions: 9 in last 6 retros, 2 done
```

Output (excerpt):

```markdown
### Flow and delivery: level 2 · confidence High
**What we saw**
- 14 to 16 items in progress for 6 developers, more than two each (metrics, board in planning).
- Median cycle time 11 days; 85th percentile 29 days (metrics).
- No WIP limits on the board (observation).
**What would move it up:** WIP limits in use, and cycle time reviewed in the retro.

### Product ownership: level 2 · confidence Low
**What we saw**
- The PO needs sign-off from the head of product for anything over 3 days of work (interviews).
- [TBC] Second source needed: check the backlog history for who reorders items.

## Recommended experiments, in order
| # | Experiment | Dimension | Hypothesis | Owner | Start | Review on | Signal |
|---|---|---|---|---|---|---|---|
| 1 | Team WIP limit of [8] on the board | Flow | Less in progress will cut waiting time | Toms | Mon 16 Nov 2026 | Mon 14 Dec 2026 | 85th percentile cycle time falls below [20] days |
| 2 | Agree with the head of product what Agnese can decide alone | Product ownership | Fewer sign-offs will shorten the wait before work starts | Agnese | Mon 16 Nov 2026 | Mon 14 Dec 2026 | Sign-off requests per sprint, before and after |
```

## Checks before you hand it over

- No overall score, no average across dimensions, and no table that ranks teams.
- Every level cites at least one source, and levels with one source are marked confidence Low.
- Every number and quote comes from the input. Missing evidence is [TBC].
- Three to five experiments, in an order that makes sense, each with an owner or [TBC] and a review date with the correct weekday.
- The "Who sees this" line is filled in.
