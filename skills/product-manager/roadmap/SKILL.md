---
name: roadmap
description: Build an outcome-based Now, Next, Later roadmap with themes, metrics and confidence levels. Use when the user asks for a product roadmap or a plan for the next quarter or year, wants to turn a backlog or strategy into a roadmap, needs a roadmap for leadership, the board, the team or customers, or asks "what are we doing next and why".
argument-hint: "[goals, a prioritised list, or an existing roadmap to update]"
---

# Outcome roadmap

A roadmap says which problems we will work on, in what order and why. A good one fits on a page, ties every item to an outcome with a metric, and is honest that confidence drops the further out it looks. It changes when we learn something, and that is the point of it.

The usual failure is a feature list with dates: a Gantt chart nobody believes, which turns every change of mind into a broken promise. The second is a roadmap that holds everything anyone asked for. That is a backlog, not a plan.

## Input

Company or product goals (OKRs, a North Star metric), a prioritised list, research, metrics, and fixed commitments. Look for an existing roadmap in the project with Glob first (for example `**/*roadmap*`) and update it: keep what is still true, move items between columns, and note what changed since the last version. Read PRDs and prioritisation outputs if they exist.

## Ask first when the input is thin

In one message, at most:

1. What is the product or company goal for the next 6 to 12 months? Is there a metric?
2. What's on the list today: problems, themes or features? Paste it.
3. Who is the roadmap for: leadership, the team, customers, or all three?
4. How many teams will work on it?
5. Are there fixed commitments: contract deadlines, regulatory dates, events?

Don't ask for dates. Add them only if the user asks. If the user says "just draft it", draft with [TBC] for metrics and confidence, and list your assumptions at the end.

## Rules

- **Three horizons, set by confidence rather than the calendar.**
  - **Now:** in delivery or final discovery, team assigned, solution mostly known. Confidence High.
  - **Next:** problem validated, solution still open. Starts when a Now item finishes. Confidence Medium.
  - **Later:** a problem we believe matters but haven't validated. Confidence Low.
- **Confidence follows the evidence.** High: behavioural data or an experiment. Medium: a pattern across interviews or counted support tickets. Low: anecdotes, one customer's request, or a hunch. Write the level and the evidence behind it.
- **Two to four themes.** A theme is a group of problems tied to a goal ("New clinics get value in their first week"), not a component ("Onboarding v2").
- **Each item is a problem and an outcome, not a feature.** Write the problem, the outcome we want, the metric with baseline and target, and the confidence. "Clinic managers can't see which shifts are uncovered until the day" is an item. "Coverage dashboard" is a bet, and only Now items name their bet.
- **Work back from feature requests.** When the input is a feature ("native app"), write the problem behind it if the input says what it is, or "[TBC: what problem this solves]" if it doesn't.
- **Keep it short.** Now: at most two items per team. Next: at most six. Later: at most six. If there's more, it isn't prioritised yet, so run /prioritise first.
- **Say what is not on it.** List the requests we are deliberately not doing, each with a one-line reason and what would change our mind. Leadership and sales often find this the most useful part.
- **Show the investment split.** The share of capacity per theme, plus the share for tech health and bugs. If the team doesn't know its split, write [TBC] rather than guess.
- **Dates only when asked, and then with confidence.** Now: a month, High. Next: a quarter, Medium. Later: a half-year at most, or no date, Low. External dates that can't move (a regulation, a contract) are marked "fixed" and never moved without saying so. Never put a single day on a Next or Later item.
- **One roadmap, three views.**
  - **Leadership:** goal, themes with outcomes and metrics, investment split, what's not on it, risks and decisions needed. One page.
  - **Team:** every item with problem, outcome, metric, confidence, discovery or delivery status, dependencies and links.
  - **Customers:** the problems we're working on, in the customer's words. No internal metrics or targets, no customer names, no internal code names, no dates unless the company has committed to them, and a line saying plans can change.
- **Date the roadmap and set the next review.** Review Now monthly and the whole roadmap quarterly.

## Output

````markdown
# [Product] roadmap

**Goal:** [goal and metric] · **Last updated:** [date] · **Next review:** [date]
**Investment split:** [theme A x%, theme B y%, tech health z%]

## Now
| Theme | Problem | Outcome and metric | Current bet | Confidence |
|-------|---------|--------------------|-------------|------------|
| [theme] | [who can't do what] | [metric: baseline to target] | [what's being built] | High: [evidence] |

## Next
| Theme | Problem | Outcome and metric | Confidence |
|-------|---------|--------------------|------------|
| [theme] | [problem] | [metric: baseline to target] | Medium: [evidence] |

## Later
| Theme | Problem | Why it might matter | Confidence |
|-------|---------|---------------------|------------|
| [theme] | [problem] | [signal] | Low: [evidence] |

## Not on the roadmap
- [Request]: [why not, and what would change our mind]

## Risks and decisions needed
- [Risk or decision] (owner: [name], by [date])

## Changes since last version
- [Only when updating an existing roadmap]

---

## Leadership view
[Goal, themes with outcomes and metrics, investment split, not on the roadmap, decisions needed. One page.]

## Customer view
**What we're working on now:** [problems, in customer language]
**What's coming after that:** [Next themes, no dates]

*Plans change as we learn. This is not a commitment to specific features or dates.*
````

Produce the views the user asked for. When the audience is unclear, write the team view and offer the other two.

After the roadmap, offer once: "Want me to draft a PRD for one of the Now items, or a discovery interview guide for a Next item?"

## Example

Input:

```
roadmap for Shiftwise (rota software for clinics), for leadership and customers. goal: net revenue retention 98% to 105% by end of 2027. 2 teams.
- managers find out about uncovered shifts on the day. 31% of swapped shifts last month had no cover until <24h before start (data). team A building coverage alerts now
- 6 of 8 churned clinics we interviewed said payroll export was painful
- Northvale Health (biggest group) wants a native staff app
- sales keep asking for a patient booking module
```

Output (excerpt):

```markdown
## Now
| Theme | Problem | Outcome and metric | Current bet | Confidence |
|-------|---------|--------------------|-------------|------------|
| Never short-staffed | Managers learn about uncovered shifts on the day | Swapped shifts with no cover 24 hours before start: 31% to [TBC] | Coverage alerts | High: behavioural data |

## Next
| Theme | Problem | Outcome and metric | Confidence |
|-------|---------|--------------------|------------|
| Keep every clinic | Getting rotas into payroll is painful enough to come up in churn interviews | Churn citing payroll: [TBC] to [TBC] | Medium: 6 of 8 churn interviews |

## Later
| Theme | Problem | Why it might matter | Confidence |
|-------|---------|---------------------|------------|
| Never short-staffed | [TBC: what staff can't do on their phones today] | One large group asked for a native staff app | Low: one customer's request |

## Not on the roadmap
- Patient booking module: a different product for a different buyer, and it doesn't move retention. We'd revisit it if existing clinics started asking [TBC: how many would count].

## Customer view
**What we're working on now:** earlier warning when a shift has no cover.
**What's coming after that:** an easier route from rota to payroll.
```

## Checks before you hand it over

- Every item is a problem with an outcome, a metric (or [TBC]) and a confidence level backed by named evidence.
- No item has a date unless the user asked for dates, and no Next or Later item has a single day.
- Now holds at most two items per team, and Next and Later at most six each.
- "Not on the roadmap" exists and has a reason for every entry.
- The customer view has no internal metrics, targets, customer names or uncommitted dates.
