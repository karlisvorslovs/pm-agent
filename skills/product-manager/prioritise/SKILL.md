---
name: prioritise
description: Rank features or opportunities with RICE, MoSCoW, Kano or value vs effort, and show the working. Use when the user wants to prioritise or prioritize a backlog, a feature list, opportunities or requests, asks "what should we build first", "score these", "RICE this", "MoSCoW the release" or "run a Kano survey", or needs to decide what to cut to fit a date or a team.
argument-hint: "[paste the list, with any reach, effort or evidence you have]"
---

# Prioritise

Prioritising is deciding what not to do. A useful ranking shows the method, every input, the arithmetic and the line where capacity runs out, so people can argue with one number instead of the whole list. It ends with the items that are cut and what cutting them costs.

The usual failure is false precision: RICE scores to two decimal places built on guesses, and a ranking that changes nothing because nothing falls below the line. The other is mixing methods, so a Must from one list gets compared with a RICE score from another.

## Input

A list of items, ideally with how many users each one affects, an effort estimate from the team, and the evidence behind each. Read backlogs, CSVs or PRDs in the project first. Check the project notes for the current goal or OKRs and the team size.

## Ask first when the input is thin

In one message, at most:

1. What's on the list? Paste it, even as one-liners.
2. Which goal or metric should these move this period?
3. What's the capacity in people and time? (Three engineers for a quarter is about nine person-months.)
4. What do you know per item: users affected per quarter, effort from the team, evidence?
5. Is this for a fixed-date release, or for the next quarter in general?

If the user says "just do it", score with what you have, mark missing inputs [TBC], and rank with ranges ("between 400 and 1,200 depending on reach"). Never invent reach, effort or survey answers.

## Choose the method and say why

| Situation | Method |
|-----------|--------|
| Comparable items, and you have or can estimate reach and effort | RICE |
| A fixed date or time box, and the question is what's in the release | MoSCoW |
| You want to know which features drive satisfaction, and can survey at least 20 customers per segment | Kano |
| Fewer than about ten items, little data, a call needed in the room | Value vs effort |

State the choice in one sentence, for example "RICE, because the items are comparable and we have reach data for all of them". Use one method per ranking. Committed work (a contract, a regulation, a security fix) is not scored. List it first and take its effort off the capacity before ranking the rest.

## RICE

**Score = Reach × Impact × Confidence ÷ Effort**

- **Reach:** people or events per period, with the same period for every item (usually a quarter). Use real counts where they exist and say where they came from.
- **Impact:** the effect on the goal metric for each person reached. 3 massive, 2 high, 1 medium, 0.5 low, 0.25 minimal. No other values.
- **Confidence:** 100% when data backs reach, impact and effort (behavioural data or an experiment). 80% when one of the three is an estimate (a pattern across interviews). 50% when it is mostly a guess (an anecdote). Below 50%, don't score it. Send it to discovery.
- **Effort:** total person-months across product, design and engineering. Whole numbers, or 0.5 for anything well under a month. It comes from the team, not the PM.
- **Show the arithmetic on every row,** for example "12,000 × 1 × 0.8 ÷ 2 = 4,800". Round the score to a whole number. Recalculate every row before you reply.
- **Scores within 20% of each other are a tie.** Break the tie on strategy, dependencies or risk, and say which.
- **Sensitivity:** take the least certain input on the top three items, move it to its plausible low and high, and say whether the order changes.

## MoSCoW

- **Must:** without it the release is pointless, unsafe or illegal. Test: "If this is missing, do we cancel the release?" If not, it isn't a Must.
- **Should:** important and painful to leave out, but there is a workaround.
- **Could:** wanted, small impact if left out. First to drop when time runs short.
- **Won't (this time):** agreed out of this release. Write it down so it stops coming back.
- **Musts take at most about 60% of the effort in the time box,** as DSDM recommends, with Shoulds about 20% and Coulds about 20% as the contingency. Show the sums and the percentages. If Musts are over 60%, move items down, cut scope inside a Must, or move the date. Say which you recommend.

## Kano

Ask each respondent two questions per feature, each with the same five answers: I like it, I expect it, I'm neutral, I can tolerate it, I dislike it.

- Functional: "If [product] had [feature], how would you feel?"
- Dysfunctional: "If [product] did not have [feature], how would you feel?"

Classify each answer pair with the evaluation table. Rows are the functional answer, columns the dysfunctional answer.

| Functional \ Dysfunctional | Like | Expect | Neutral | Tolerate | Dislike |
|---|---|---|---|---|---|
| **Like** | Q | A | A | A | O |
| **Expect** | R | I | I | I | M |
| **Neutral** | R | I | I | I | M |
| **Tolerate** | R | I | I | I | M |
| **Dislike** | R | R | R | R | Q |

A: Attractive (delights, nobody misses it when absent). O: One-dimensional (more is better). M: Must-be (expected, its absence angers). I: Indifferent. R: Reverse (some people prefer it absent). Q: Questionable (contradictory answers, leave them out).

- A feature's category is its most frequent one. If the top two are within 10 percentage points, report both and check whether segments differ.
- Add the satisfaction coefficients. Better = (A + O) ÷ (A + O + M + I). Worse = (O + M) ÷ (A + O + M + I), shown as a negative number. A high Worse means build it to stop dissatisfaction. A high Better means it can win customers.
- What to do: Must-be, get it to good enough and stop. One-dimensional, compete here. Attractive, pick one or two to stand out. Indifferent, cut. Reverse, find out which segment dislikes it before building.
- With no survey data yet, deliver the questionnaire and an empty tally sheet. Never fill in answers.

## Value vs effort

Score value against the goal from 1 to 5 and effort from 1 to 5, and name who scored. Treat 4 and 5 as high, 1 to 3 as low. Quick wins: high value, low effort. Big bets: high value, high effort. Fill-ins: low value, low effort. Time sinks: low value, high effort, so cut them. It sorts a conversation. It doesn't replace one.

## Output

````markdown
# Prioritisation: [list name], [date]

**Goal:** [metric or objective] · **Capacity:** [people × time = person-months]
**Method:** [name], because [one sentence]
**Committed work (not scored):** [item, effort] or none

## Scores
| Rank | Item | Reach | Impact | Confidence | Effort | Working | Score | Evidence |
|------|------|-------|--------|------------|--------|---------|-------|----------|
| 1 | [item] | [n per quarter] | [3/2/1/0.5/0.25] | [100/80/50%] | [person-months] | [R × I × C ÷ E] | [score] | [source] |

## The line
**Above the line ([x] of [y] person-months):** [items]
**Cut:** [item]: [what not doing it costs, and who needs to hear it]

## Sensitivity
[Least certain input, its low and high case, and whether the order changes]

## Decisions needed
- [Decision] (from: [name], by [date])
````

For MoSCoW, replace the scores table with Item, Category, Effort and Reason, then one line with the effort per category and the Must percentage. For Kano, show the tally per feature (A, O, M, I, R, Q), the category, and Better and Worse.

After the ranking, offer once: "Want me to turn what's above the line into a Now / Next / Later roadmap?"

## Example

Input:

```
rice these, 6 person-months next quarter. reach per quarter.
saved addresses: 12k customers, impact medium, conf 80%, 2 PM
live courier tracking: 20k, high, 50%, 6 PM
bulk CSV upload for business accounts: 600, massive, 80%, 1 PM
dark mode: 9k, minimal, 80%, 1 PM
```

Output (excerpt):

```markdown
**Method:** RICE, because the items are comparable and each has reach and an effort estimate.

| Rank | Item | Working | Score |
|------|------|---------|-------|
| 1 | Saved addresses | 12,000 × 1 × 0.8 ÷ 2 | 4,800 |
| 2 | Live courier tracking | 20,000 × 2 × 0.5 ÷ 6 | 3,333 |
| 3 | Dark mode | 9,000 × 0.25 × 0.8 ÷ 1 | 1,800 |
| 4 | Bulk CSV upload | 600 × 3 × 0.8 ÷ 1 | 1,440 |

## The line
**Above the line (4 of 6 person-months):** saved addresses, dark mode, bulk CSV upload. The other 2 person-months cover a tracking test and contingency.
**Cut:** live courier tracking. It ranks second but needs all 6 person-months, which leaves no room for saved addresses.

## Sensitivity
Tracking has the weakest evidence (50%). If its impact were massive (3), it would score 5,000 and rank first. Test whether tracking changes repeat orders before committing 6 person-months to it [TBC: test design].
```

## Checks before you hand it over

- The method is named with a one-sentence reason, and there is one method per ranking.
- Every RICE row shows its arithmetic, and every result is correct. Recalculate them.
- Impact uses only 3, 2, 1, 0.5 or 0.25, and confidence only 100%, 80% or 50%.
- The capacity line is drawn, and cut items are named with their cost.
- No reach, effort or survey answer was invented. Gaps are [TBC].
