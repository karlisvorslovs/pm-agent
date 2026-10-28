---
name: sprint-metrics
description: Read out velocity, say/do, carry-over, scope change and burndown from pasted sprint data. Use when the user pastes a velocity chart, sprint report, burndown, CSV or Jira export, or asks "how's our velocity", "what does this burndown mean", "are we getting faster", "why do we keep carrying work over", or wants sprint data explained for a retro or for management.
argument-hint: "[paste the sprint data, or give a path to an export]"
---

# Sprint metrics read-out

Sprint metrics help the team forecast and spot problems in how work flows. They are for the team first. A good read-out says what the numbers show, what they might mean, and which question to put to the team, in that order.

The usual failure is treating velocity as a score: comparing teams, setting targets, or reading a trend into three data points. Once velocity becomes a target, estimates grow and the number stops meaning anything.

## Input

Pasted tables, CSV, a Jira Velocity Chart or Sprint Report, burndown figures, or a path to an export. Look for exports in the project with Glob (`**/*.csv`, `**/*velocity*`, `**/*sprint*report*`) and read them first.

Map tool terms to plain ones: Jira's "Commitment" is the forecast at Sprint Planning, "Completed" is points Done, and items marked as added after the sprint started are scope change.

## Ask first when the input is thin

If there is no data, ask in one message, at most:

1. Can you paste the numbers per sprint: points (or items) forecast at Sprint Planning and points completed?
2. How many sprints do you have? Three is the minimum for a range; five is better.
3. Did anything unusual happen: people joining or leaving, holidays, a change in sprint length or in how you estimate?
4. Who is this for: the team, the Product Owner or management?

Never produce numbers, trends or charts without data. If the user says "just draft it", give the empty read-out template with [TBC] and the list of data you need.

## Rules

**Never invent or fill in a data point.** A missing sprint stays missing, shown as "no data". A missing column means that measure is not calculated, and you say so.

**Velocity: average and range of the last three to five sprints.** Name the sprints used and show the numbers. With fewer than three sprints, list them and don't average. Recalculate every average and percentage yourself; don't trust totals in the export.

**Say/do ratio** = points completed ÷ points forecast at Sprint Planning, per sprint, as a percentage. If the data separates planned from added work, use only planned items and say so. Reading it:
- 80 to 100% sprint after sprint is healthy for most teams.
- Above 100% again and again: the team forecasts low.
- Below 70% again and again: over-forecasting, too much disruption, or items too big.
- One sprint is noise. Look for the pattern.

**Carry-over:** items and points not Done at sprint end. The same item carried over twice is too big or stuck: name it.

**Scope change:** points added and removed after Sprint Planning, each as a percentage of the forecast. More than 20% in a sprint deserves a question: where did it come from? Renegotiating scope with the Product Owner is normal in Scrum; changes that put the Sprint Goal at risk are not.

**Sprint Goal first, if the data has it.** A team that meets its Sprint Goals with a say/do of 75% is doing better than one at 100% with no goal.

**Burndown shapes**

| Shape | What it usually means | Ask the team |
|-------|-----------------------|--------------|
| Flat, then a cliff in the last two or three days | Items too big; review and testing bunched at the end; board updated late | "What stopped items closing earlier?" |
| Line goes up | Scope added after planning, or items re-estimated | "Where did the new work come from, and did it serve the goal?" |
| Hits zero early | Forecast low, or items closed before they met the Definition of Done | "Did we pull in more work? Is everything closed really Done?" |
| Flat all sprint | Work blocked, or nobody updates the board | "Is the board telling the truth?" |
| Steps down steadily, close to the ideal line | Small items finishing through the sprint | Nothing to fix |
| Drops fast early, then flat | Easy items done first, hard ones left | "Are the hard items the ones the goal needs?" |

**Cycle time, if the data has start and finish dates.** Report the median and the 85th percentile, not the average, which outliers distort. "85% of items finish within 6 working days" is a forecast people can use. List items in progress for longer than the 85th percentile.

**Charts.** Add a Mermaid `xychart-beta` when there are four or more sprints: bars for completed, a line for forecast. Mermaid xycharts have no legend, so say under the chart which is which. Use a table instead when there are fewer than four points.

**Caveats, every time:**
- **Don't compare teams.** Points are relative to one team's estimates. If someone asks, say no plainly, and offer what can be compared: Sprint Goals met, cycle time trends within each team, outcomes delivered.
- **Velocity is not a target.** Asking for more points gets bigger estimates, not more done.
- **Small samples.** Five sprints are not a trend, and a swing of 10 to 15% between sprints is normal.
- **Breaks in the series.** Changes in team members, sprint length or estimation scale make before and after hard to compare. Say where they happen.

**Frame for the audience.** For the team: questions to discuss. For management: Sprint Goals met, forecast range for upcoming work, and impediments that need their help. Not a points league table.

## Output

````markdown
# Sprint metrics: [team], sprints [first] to [last]

**Headline:** [Two sentences: the main thing the data shows, and the one question for the team.]

## Velocity
Sprints [x] to [y]: [list]. Average [n], range [low] to [high].

```mermaid
xychart-beta
    title "Forecast and completed, sprints [x] to [y]"
    x-axis [S1, S2, S3, S4]
    y-axis "Story points" 0 --> [max]
    bar [completed values]
    line [forecast values]
```
Bars: completed. Line: forecast at Sprint Planning.

## Sprint by sprint
| Sprint | Goal met? | Forecast | Completed | Say/do | Added | Removed | Carry-over |
|--------|-----------|----------|-----------|--------|-------|---------|------------|

## Burndown, sprint [n]
**Shape:** [shape]. **Likely reasons:** [two]. **Ask:** [question]

## Cycle time
[Median, 85th percentile, items ageing. Or: "Not in the data."]

## Questions for the team
1. [Question tied to a finding]

## Caveats
- [Sample size, breaks in the series, what wasn't in the data]
````

## Example

Input:

```
sprint | forecast | completed | added after start
31 | 24 | 22 | 0
32 | 26 | 25 | 2
33 | 25 | 18 | 7
34 | 24 | 23 | 1
35 | 27 | 20 | 6
```

Output (excerpt):

```markdown
**Headline:** Velocity averaged 21.6 points over sprints 31 to 35, ranging from 18 to 25. The two weakest sprints (33 and 35) are also the two with the most work added after planning, so ask the team where that work came from.

## Sprint by sprint
| Sprint | Goal met? | Forecast | Completed | Say/do | Added | Removed | Carry-over |
|--------|-----------|----------|-----------|--------|-------|---------|------------|
| 31 | no data | 24 | 22 | 92% | 0 (0%) | no data | no data |
| 32 | no data | 26 | 25 | 96% | 2 (8%) | no data | no data |
| 33 | no data | 25 | 18 | 72% | 7 (28%) | no data | no data |
| 34 | no data | 24 | 23 | 96% | 1 (4%) | no data | no data |
| 35 | no data | 27 | 20 | 74% | 6 (22%) | no data | no data |

## Caveats
- Five sprints is a small sample. The link between added work and low say/do is a question to test, not a finding.
- No Sprint Goal, carry-over or cycle time data was given, so those aren't assessed.
```

## Checks before you hand it over

- Every number traces back to the input. No sprint, point or date is filled in.
- Averages, ranges and percentages are recalculated and correct.
- Velocity is a range, and the sprints used are named.
- The caveats are there. No team comparison and no velocity target, even if asked.
- Each finding ends in a question for the team, not a verdict.
