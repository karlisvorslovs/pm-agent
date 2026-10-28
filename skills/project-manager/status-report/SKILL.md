---
name: status-report
description: Write a one-page weekly project status report with RAG, milestones, risks and decisions needed. Use when the user asks for a status report, a weekly update, a highlight report, a steering group or sponsor update, or pastes notes from the week and wants them turned into a report.
argument-hint: "[project name, or paste your notes for the week]"
---

# Weekly status report

A status report tells the sponsor in 30 seconds whether to worry, and if so, what they need to decide. A good one leads with the status and the ask, backs every colour with evidence measured against the baseline, and fits on one page.

The usual failure is the watermelon report: green outside, red inside. A list of activity ("four calls with the vendor") stands in for progress, the milestone that slipped is not in the table, and the amber has no recovery plan. The second failure is softening: "a slight delay" where the truth is "7 working days late".

## Input

Notes for the week, the schedule, the RAID log and last week's report. Look for them with Glob (`**/*status*`, `**/*schedule*`, `**/*raid*`) and read them before asking. Last week's report gives the previous RAG, the decisions still open and the forecasts to compare against.

## Ask first when the input is thin

Ask in one message, at most:

1. Which project, and what week ending date?
2. What finished this week against what the plan said would finish, and are the milestones in the next four to six weeks still on their baseline dates?
3. What is spent to date and the forecast at completion, against the approved budget?
4. What has gone wrong or is worrying you, and is there anything someone above you needs to decide?
5. Who reads it: the sponsor, the steering group or a client?

Don't ask for what the files already tell you. If the user says "just draft it", draft with [TBC] in the gaps. **No evidence, no Green:** an area with no information is [TBC], never Green by default.

## Rules

**RAG means the same thing every week.**
- **Green:** on track against the baseline and within tolerance. No help needed.
- **Amber:** a tolerance is under threat or a milestone is forecast late, and the project has a recovery plan it can carry out itself.
- **Red:** the project will miss a commitment or break a tolerance unless someone above it decides something.

**Rate each area against tolerances.** Use the charter's tolerances. If there are none, use 10 working days on any milestone and 5% of budget, and say that you did.

| Area | Green | Amber | Red |
|------|-------|-------|-----|
| Schedule | Milestones forecast on or before baseline, or slip absorbed by float | A milestone forecast late but within tolerance, with a recovery plan | Forecast beyond tolerance, a fixed date at risk, or no credible recovery |
| Budget | Forecast at completion (EAC) within budget, contingency used in step with progress | EAC over budget but within tolerance, or contingency used faster than work done (for example 60% gone at 30% complete) | EAC beyond tolerance |
| Scope | Baseline scope, changes going through change control | Change requests pending that would affect time or cost | Agreed scope can't be delivered within the constraints |
| Risks and issues | No high risk (15+) without a working response, no issue past its due date | A high risk rising, or an issue past due | A high risk has occurred, or an issue breaks a tolerance |

**Overall is the worst area.** If you rate it better than the worst area, give the reason in one sentence. A report with an Amber area and a Green overall needs that sentence or it is a watermelon.

**Evidence for every colour.** A number or a fact against the plan: "112 of 150 test cases passed, 120 planned", "EAC £212k against a £200k budget (+6%)". Not "going well".

**Headline in two sentences.** First: the status and the main reason. Second: the ask, or what happens next. Someone who reads only the headline should know whether to act.

**Progress is against the plan, not effort.** Say what was planned to finish this week, what did, and what didn't (with the new date). Use percent complete only when it is counted (120 of 180 test cases passed), never for "design is 80% done".

**Milestones table:** the next four to six milestones plus any that have slipped. Baseline, forecast, variance in working days, RAG. Never change the baseline column; only an approved change request moves it.

**Earned value, if the project tracks it:** report SPI and CPI. A CPI below 0.95 for two reports running is a warning. Once a project is about 20% complete, CPI rarely improves by more than 10%, so don't forecast a recovery the numbers don't support.

**Top risks and issues: five at most,** from the RAID log, with their IDs, what is being done, the owner and the date.

**Every Amber or Red area comes with options.** Two or three, one of which can be "do nothing" if you state what it costs. Give each option's effect on time, cost and scope, then one recommendation and why.

**Decisions needed say what, from whom, by when, and what happens if late.** "Approve £6,000 overtime, Priya Nair, by Wed 18 Nov 2026. If later, weekend sessions can't be staffed and UAT loses 2 days." Carry over undecided items from last week and say how long they have been waiting.

**One page.** About 400 words of prose plus the tables. Detail goes in links.

## Output

````markdown
# [Project] status report, week ending [date]

**Overall: [Red/Amber/Green]** (last week: [colour]) · **Sponsor:** [name] · **PM:** [name]

**Headline:** [Status and the main reason.] [The ask, or what happens next.]

| Area | RAG | Last week | Evidence |
|------|-----|-----------|----------|
| Schedule | | | |
| Budget | | | |
| Scope | | | |
| Risks and issues | | | |

## Progress against plan
- **Planned and done:** [items]
- **Planned, not done:** [item, reason, new date]
- **Not planned but done:** [items, if they matter]

## Milestones
| Milestone | Baseline | Forecast | Variance (working days) | RAG |
|-----------|----------|----------|-------------------------|-----|

## Top risks and issues
| ID | Risk or issue | Score or priority | Action | Owner | Due |
|----|---------------|-------------------|--------|-------|-----|

## Options and recommendation: [area]
| Option | Time | Cost | Scope and quality | Risk |
|--------|------|------|-------------------|------|
| A. [option] | | | | |
| B. Do nothing | | | | |

**Recommendation:** [option and why, in two or three sentences]

## Decisions needed
| Decision | From | By | If late |
|----------|------|----|---------|

## Next week
- [Three to five things planned to finish]
````

Leave out "Options and recommendation" only when every area is Green. Offer once at the end: "Want a shorter version for email or Slack?" (/stakeholder-update does that).

## Example

Input:

```
status w/e fri 13 nov 2026, claims portal for Tellis Insurance, sponsor Priya Nair
- sprint 6 done, 41 of 48 stories done, plan said 44
- data migration test load failed tue, vendor (Corvi) fixing the mapping, new load mon 16 nov
- UAT start baselined mon 23 nov, now looks like wed 2 dec
- go-live mon 18 jan still ok if UAT starts by 2 dec but the buffer's gone
- spent £312k of £450k, forecast £438k
- need Priya to approve weekend UAT sessions, £6k overtime, by wed 18 nov
```

Output (excerpt):

```markdown
**Overall: Amber** (last week: [TBC]) · **Sponsor:** Priya Nair

**Headline:** UAT start has slipped 7 working days to Wed 2 Dec 2026 after the data migration test load failed, which uses all the buffer before go-live on Mon 18 Jan 2027. Priya, please approve £6,000 for weekend UAT sessions by Wed 18 Nov 2026 so go-live holds.

| Area | RAG | Last week | Evidence |
|------|-----|-----------|----------|
| Schedule | Amber | [TBC] | UAT start forecast Wed 2 Dec against baseline Mon 23 Nov (+7 working days, within 10-day default tolerance). 41 of 48 stories done, 44 planned |
| Budget | Green | [TBC] | EAC £438k against £450k; £444k with the overtime |
| Scope | [TBC] | [TBC] | No scope information in the notes |
| Risks and issues | Amber | [TBC] | Migration load failed; if the rerun on Mon 16 Nov fails, UAT slips past Wed 2 Dec |

## Milestones
| Milestone | Baseline | Forecast | Variance (working days) | RAG |
|-----------|----------|----------|-------------------------|-----|
| Migration test load passed | [TBC] | Mon 16 Nov 2026 | [TBC] | Amber |
| UAT start | Mon 23 Nov 2026 | Wed 2 Dec 2026 | +7 | Amber |
| Go-live | Mon 18 Jan 2027 | Mon 18 Jan 2027 | 0, no buffer left | Amber |

## Options and recommendation: schedule
| Option | Time | Cost | Scope and quality | Risk |
|--------|------|------|-------------------|------|
| A. Weekend UAT sessions | Recovers [TBC] days of UAT | +£6,000, EAC £444k | No change | Tester fatigue |
| B. Do nothing | Go-live holds with zero buffer | None | UAT 7 days shorter | Any defect found late moves go-live |
| C. Move go-live | [TBC] new date | [TBC] | No change | Needs steering group approval |

**Recommendation:** A. It keeps go-live and stays within budget. B leaves no room for a single serious defect.
```

## Checks before you hand it over

- Overall RAG is the worst area, or there is one sentence saying why not.
- Every colour has evidence against the baseline, and no area is Green without evidence.
- Every slipped milestone is in the table with baseline, forecast and variance in working days.
- Every Amber or Red has options and one recommendation.
- Every decision has a person and a date.
- No figure, name or date appears that is not in the input, and every weekday matches its date.
