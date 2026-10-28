---
name: sprint-planning
description: Prepare and run Sprint Planning with capacity, a velocity range, a Sprint Goal and a forecast. Use when the user says "plan the sprint", "sprint planning", "how much can we take on", "what's our capacity", "write a sprint goal", or pastes a backlog, leave dates or past velocity before a sprint starts.
argument-hint: "[team, sprint dates and candidate items, or paste a backlog export]"
---

# Sprint Planning

Good Sprint Planning ends with three things the whole Scrum Team believes: why the sprint is worth doing (the Sprint Goal), what the Developers forecast they can get Done, and a first plan for how. For a two-week sprint it takes up to 4 hours, and most of that time should go on the goal and the how, not on arguing about points.

The usual failure is filling the sprint to last sprint's velocity from the top of the backlog, then writing a "goal" that lists the tickets. That sprint has no slack and no focus, and nothing to negotiate when something goes wrong on day three.

## Input

Usually some of: the Developers and the sprint dates, leave and other duties, completed points from past sprints, candidate Product Backlog items with estimates, the Product Goal, and what the Product Owner wants from this sprint.

Look for a backlog export, sprint history or team calendar in the project with Glob (`**/*backlog*`, `**/*sprint*`, `**/*velocity*`) and read it before asking anything.

## Ask first when the input is thin

If you don't have people, dates and some idea of what the sprint is for, ask in one message, at most:

1. Who are the Developers, and what are the sprint dates?
2. Who is on leave, on a support rota or committed elsewhere during the sprint, and for how many days?
3. What did the team complete in each of the last three to five sprints?
4. What does the Product Owner want this sprint to achieve, and which items are at the top of the Product Backlog?
5. Do you already use a focus factor? If not, I'll start at 0.8.

Infer instead of asking: two-week sprint, 10 working days, events at 1.5 days per person. If the user says "just draft it", draft with [TBC] for every missing number and list your assumptions at the end. Never invent story points, velocity or leave.

## How to build it

**Capacity in person-days, with every step shown.** Work it out per person, then total it.
1. Gross: working days in the sprint (leave out public holidays). Only use holidays the user gives you or a location they name. Never guess a country from people's names; if holidays might matter, ask.
2. Minus leave.
3. Minus other duties: support rota, on-call, regular work for other teams.
4. Minus Scrum events. For a two-week sprint, budget 1.5 days per person: Sprint Planning up to 4 hours, Daily Scrum 10 × 15 minutes, Sprint Review up to 2 hours, Retrospective up to 1.5 hours, plus refinement.
5. Times a focus factor for interruptions, context switching and small unplanned work. Start at 0.8. Use 0.7 for a team that is often pulled into support or meetings.

Keep that order, and count each cost once. Events are already out at step 4, so the focus factor is not there to cover them. Round only the final figures, to one decimal place.

**Velocity is a range, not a number.** Take the last three to five sprints. Give the average, the lowest and the highest. With fewer than three sprints there is no reliable velocity: say so, and let the Developers forecast from capacity and the items themselves. Leave a sprint out only if something unusual happened (half the team off sick, a cancelled sprint), and name it.

**Adjust velocity for this sprint's capacity.** Work out a normal sprint's capacity: everyone in, no leave, no extra duties, same events and focus factor. Ratio = this sprint ÷ normal sprint. Multiply the low, average and high velocity by that ratio. The result is the forecast range.

**Plan to the middle of the range, not the top.** The forecast belongs to the Developers, not to the scrum master or the Product Owner. Leave 10 to 20% of it for bugs and small unplanned work. Velocity is a planning aid here, never a target to beat.

**The Sprint Goal is one sentence about an outcome.** It says what will be different for a user or the business when the sprint ends. "Finish INV-210, INV-211 and INV-214" is a list. "Accountants can export a month of invoices without asking a developer" is a goal. Test it with two questions. Could a stakeholder tell at the Sprint Review whether it was met? If one item turns out bigger than expected, could we still meet it with less scope?

**Select items that serve the goal.** Mark each candidate "serves the goal" or not. Items that don't (a library upgrade, a bug elsewhere) can still go in, after the goal items, and the team should know they are the first to drop. If nothing at the top of the backlog adds up to a goal, say so: the Product Owner may need to reorder, or the goal is a smaller step.

**Only take items that are ready enough.** An item with no acceptance criteria goes back to refinement, not into the sprint. An item bigger than about a third of the velocity is a risk to the goal: split it during planning if you can, otherwise start it first.

**Name the risks to the goal, not to the list.** A dependency on another team, a key person's leave, an unknown technical area, a decision still pending. One owner per risk.

**Run it in three parts.** The Scrum Guide 2020 sets three topics: why is this sprint valuable, what can be Done, and how will the chosen work get done. The Sprint Goal must be agreed before the event ends. The how doesn't need to be complete: break the first few days into tasks of a day or less, and let the rest emerge.

| Part | Time | Led by | Ends with |
|------|------|--------|-----------|
| Opening: capacity, carry-over from last sprint | 15 min | Scrum Master | Capacity agreed |
| Why: what the Product Owner wants, and why now | 30 min | Product Owner | Draft Sprint Goal |
| What: select items that serve the goal | 60 min | Developers | Forecast |
| How: split the first items into tasks of a day or less | 90 min | Developers | Plan for the first days |
| Close: confirm goal, forecast and risks | 15 min | Scrum Master | Agreement |

That is 3 hours 30 minutes, inside the 4-hour timebox. Scale it down for a one-week sprint (2 hours at most).

## Output

````markdown
# Sprint [n] Planning, [start date] to [end date]

**Sprint Goal:** [One sentence. The outcome, and for whom.]
**Product Goal it serves:** [Product Goal, or TBC]
**Forecast:** [low] to [high] points. **Planned:** [n] points, [n] items.

## Capacity

| Person | Sprint days | Leave | Other duties | Events | Available | × focus | Capacity |
|--------|-------------|-------|--------------|--------|-----------|---------|----------|
| [Name] | [n] | [n] | [n] | 1.5 | [n] | 0.8 | [n] |
| **Team** | **[n]** | **[n]** | **[n]** | **[n]** | **[n]** | **0.8** | **[n] person-days** |

Step by step: [gross] person-days → [n] after leave and other duties → [n] after events → [n] after the focus factor.
Normal sprint: [n] person-days. This sprint: [n]% of normal.

## Velocity

Last [n] sprints: [list]. Average [n], range [low] to [high].
Adjusted to [n]% capacity: [low] to [high], middle [n].

## Sprint Backlog

| # | Item | Points | Serves the goal? | Notes |
|---|------|--------|------------------|-------|
| 1 | [ID: title] | [n] | Yes | |
| 2 | [ID: title] | [n] | No, first to drop | |

**Considered, not selected:** [ID: why]

## Risks to the Sprint Goal

| Risk | Owner | What we'll do |
|------|-------|---------------|
| [What could stop the goal] | [Name] | [Action, with a date] |

## Assumptions and gaps
- [Anything marked TBC, and what you assumed]
````

## Example

Input:

```
planning mon 9 nov, sprint runs to fri 20 nov. devs: aiga, ben, chen, dace, emil, farah.
dace off 18-20 nov. emil on support rota 2 days. we use 0.8 focus.
velocity last 5: 34, 29, 38, 31, 33
PO wants dispatchers to see live ETAs. top of backlog: FRT-120 live ETA on map (8),
FRT-121 delay alert (5), FRT-125 GPS feed retry (3), FRT-126 ETA on mobile (5),
FRT-118 CSV date bug (2), FRT-130 map library upgrade (5), FRT-133 driver photos (5)
```

Output (excerpt):

```markdown
# Sprint Planning, Mon 9 Nov 2026 to Fri 20 Nov 2026

**Sprint Goal:** Dispatchers can see a live ETA for every truck on the map and on mobile.
**Forecast:** 26 to 34 points. **Planned:** 28 points, 6 items.

## Capacity
| Person | Sprint days | Leave | Other duties | Events | Available | × focus | Capacity |
|--------|-------------|-------|--------------|--------|-----------|---------|----------|
| Aiga, Ben, Chen, Farah (each) | 10 | 0 | 0 | 1.5 | 8.5 | 0.8 | 6.8 |
| Dace | 10 | 3 | 0 | 1.5 | 5.5 | 0.8 | 4.4 |
| Emil | 10 | 0 | 2 | 1.5 | 6.5 | 0.8 | 5.2 |
| **Team** | **60** | **3** | **2** | **9** | **46** | **0.8** | **36.8 person-days** |

Step by step: 60 person-days → 55 after leave and other duties → 46 after events → 36.8 after the focus factor.
Normal sprint: 40.8 person-days. This sprint: 90% of normal.

## Velocity
Last 5 sprints: 34, 29, 38, 31, 33. Average 33, range 29 to 38.
Adjusted to 90% capacity: 26 to 34, middle 30.

## Sprint Backlog
| # | Item | Points | Serves the goal? | Notes |
|---|------|--------|------------------|-------|
| 1 | FRT-125: GPS feed retry | 3 | Yes | ETAs are wrong without it, so first |
| 2 | FRT-120: Live ETA on map | 8 | Yes | |
| 3 | FRT-121: Delay alert | 5 | Yes | |
| 4 | FRT-126: ETA on mobile | 5 | Yes | |
| 5 | FRT-118: CSV date bug | 2 | No, first to drop | |
| 6 | FRT-130: Map library upgrade | 5 | No, first to drop | Same map code as FRT-120, so start it after FRT-120 is merged |

**Considered, not selected:** FRT-133 driver photos (5). Doesn't serve the goal and would take the plan to 33, the top of the range.

## Risks to the Sprint Goal
| Risk | Owner | What we'll do |
|------|-------|---------------|
| Dace is off Wed 18 to Fri 20 Nov and knows the map code best | Dace | Pair with Ben on FRT-120 in week one |
| GPS vendor rate limits are unknown | Chen | Check the vendor docs by Tue 10 Nov |
```

## Checks before you hand it over

- Capacity adds up row by row and in total, every deduction is visible, and the order is leave, duties, events, then focus factor.
- Velocity is a range from three to five sprints, and any sprint left out is named.
- The Sprint Goal is one sentence about an outcome, not a list of tickets.
- Every selected item is marked as serving the goal or not, and the plan sits inside the forecast range.
- No points, names, dates or leave appear that the user didn't give. Gaps are [TBC].
