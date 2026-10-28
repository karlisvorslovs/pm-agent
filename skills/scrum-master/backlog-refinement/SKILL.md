---
name: backlog-refinement
description: Prepare and run backlog refinement, marking each item ready, not ready or needing a split. Use when the user says "refinement", "grooming", "prep the backlog", "are these stories ready", "split this story", "how should we estimate", or pastes backlog items before a refinement session or Sprint Planning.
argument-hint: "[paste the items, or give a path to a backlog export]"
---

# Backlog refinement

Refinement keeps the top of the Product Backlog clear enough that Sprint Planning can be about the goal, not about what an item means. A good session leaves every item marked ready, not ready with a reason, or needing a split, and leaves the Product Owner with a short list of specific questions.

The usual failure is the whole team reading tickets off a screen for two hours, putting numbers on items nobody understands, and splitting nothing. The opposite failure is just as common: the Product Owner hands over finished specifications, and the Developers stop asking questions.

## Input

The items to refine (pasted, a Jira or CSV export, or a path), the team's Definition of Ready if it has one, recent velocity, sprint length and how the team estimates. Look for a backlog export or a DoR in the project with Glob (`**/*backlog*`, `**/*definition-of-ready*`, `**/*dor*`) and read them first.

## Ask first when the input is thin

If you don't have the items themselves, ask in one message, at most:

1. Which items do you want to refine? Paste them, or point me to the export.
2. Do you have a Definition of Ready? If not, I'll use the five checks below.
3. What is the team's recent velocity, and how long are your sprints?
4. How does the team estimate: story points, T-shirt sizes, or not at all?
5. When is the session, how long is it, and who is coming?

Infer instead of asking: two-week sprints, a 60-minute session, the five-point DoR below. If the user says "just draft it", work through the items you have, mark gaps as [TBC], and list your assumptions. Never write acceptance criteria and present them as agreed. You can propose them, marked "proposed, for the PO".

## Rules

**Refinement is an ongoing activity, not an event.** The Scrum Guide 2020 says an item is ready for selection when the Scrum Team can get it Done within one sprint. A Definition of Ready is a team agreement on top of that, a checklist for the conversation.

**Cap the time at about 10% of capacity.** Earlier versions of the Scrum Guide said refinement usually takes no more than 10% of the Developers' capacity, and it is still a good ceiling. For 6 people in a two-week sprint that is up to 6 person-days. Two 90-minute whole-team sessions use 18 person-hours (about 2.3 person-days), which leaves room for pairs working with the Product Owner in between. If refinement needs more, items are arriving too raw: fix that with the Product Owner before the session.

**Refine about two sprints ahead.** Aim for 1.5 to 2 sprints of ready items at the top of the backlog. More than that is waste, because it will change before anyone gets to it.

**Check every item against the DoR and name what fails.** Default checks:
1. Clear value: who benefits, and why it matters now.
2. Acceptance criteria a tester could check, usually three to seven.
3. Dependencies known, and either resolved or with a date.
4. Small enough: Done within one sprint, and no bigger than about a third of velocity. Smaller is better: most teams do well with five to ten items a sprint.
5. Estimated by the Developers who will do the work (skip if the team doesn't estimate).

"Not ready" on its own is useless. "Not ready: depends on the payment provider contract, legal expects it by Mon 30 Nov 2026" tells everyone what happens next.

**Split by behaviour, not by layer.** Each slice still gives a user something they can see or a tester something they can check. Never split into "front end", "back end" and "testing". Split when an item is bigger than about a third of velocity, has more than about seven acceptance criteria, has "and" or "manage" in the title, or when planning poker cards stay far apart after one round of discussion. Patterns that work (after Richard Lawrence's story splitting patterns):

| Pattern | Use when | Example |
|---------|----------|---------|
| Workflow steps | The item covers a journey with several steps | Order returns: request a return, print a label, track the refund |
| Business rules | Different rules apply to different cases | Leave policy: Latvian rules first, then Estonian, then Lithuanian |
| Data variations | The same feature handles several kinds of data | Import: CSV first, then Excel, then the supplier's XML feed |
| Happy and unhappy paths | The main path is simple and the errors are not | Card payment succeeds first; declined card and timeout next |
| Spike | Nobody knows enough to estimate | "Can the provider's API return instalment plans? Timebox 2 days. Output: yes or no, and an estimate for the real story." |

**A spike answers one question in a fixed time.** It has a timebox of one to three days and a named output. "Research payments" is not a spike.

**Pick an estimation approach that fits the team.**
- **Planning poker** with 1, 2, 3, 5, 8, 13. Good for teams that plan with velocity. Everyone shows a card at once. The highest and lowest explain, then one revote. Still one card apart: take the higher. 13 or more means split it.
- **T-shirt sizes** (S, M, L, XL) for a new team, a large backlog, or roadmap-level sizing. Don't convert sizes to points in a spreadsheet: it fakes precision.
- **No estimates.** Count items instead of points. Works when items are split to roughly the same size, about one to three days each. Track throughput and cycle time instead of velocity.

Only the people doing the work estimate. The Product Owner answers questions; the scrum master facilitates.

**Questions for the Product Owner are specific and owned.** "What happens when a voucher expires during checkout?" not "clarify vouchers". Each one says which item it blocks and when the answer is needed.

**Timebox each item.** In a 60-minute session: 5 minutes to agree what the next sprint is likely to aim for, 45 minutes on items at 8 to 10 minutes each, 10 minutes to recap. An item that runs past 10 minutes gets its open question written down and the session moves on.

## Output

````markdown
# Refinement, [date]

**Items:** [n] · **Ready:** [n] · **Not ready:** [n] · **Needs splitting:** [n]
**Ready work:** [n] points, about [n] sprints at a velocity of [n]

## Items

| Item | Status | Why | Next step | Owner |
|------|--------|-----|-----------|-------|
| [ID: title] | Ready | Meets all five checks | Take to Sprint Planning on [date] | |
| [ID: title] | Not ready | [Which check fails] | [Verb + what] | [Name] |
| [ID: title] | Needs splitting | [Size, or why] | Split as below | [Name] |

## Proposed splits

**[ID: title]**, split by [pattern]:
1. [Slice]: [what a user can do at the end of it]
2. [Slice]

## Questions for the Product Owner

1. [Specific question] ([item], needed by [date])

## Session plan

| Time | Item | Aim |
|------|------|-----|
| 0 to 5 min | Likely next Sprint Goal | Shared context |
````

Leave out the session plan when the user only wants the item review.

## Example

Input:

```
refinement thu 12 nov, 60 min. velocity ~24. DoR is the usual five.
LV-41 request annual leave from the mobile app. 4 ACs. estimated 5
LV-44 manager approves leave. no ACs yet
LV-47 leave rules for all three countries. guessed 20
LV-50 sync approved leave to payroll. ACs done, estimated 8, but payroll vendor hasn't given us API access
```

Output (excerpt):

```markdown
# Refinement, Thu 12 Nov 2026

**Items:** 4 · **Ready:** 1 · **Not ready:** 2 · **Needs splitting:** 1
**Ready work:** 5 points, about 0.2 sprints at a velocity of 24

## Items
| Item | Status | Why | Next step | Owner |
|------|--------|-----|-----------|-------|
| LV-41: Request leave on mobile | Ready | Meets all five checks | Take to Sprint Planning | |
| LV-44: Manager approves leave | Not ready | No acceptance criteria | Add criteria before the next session | Product Owner |
| LV-47: Leave rules, three countries | Needs splitting | 20 points is over 80% of velocity | Split by business rule | [owner?] |
| LV-50: Sync leave to payroll | Not ready | Dependency: no API access from the payroll vendor | Ask the vendor for an access date | [owner?] |

## Proposed splits
**LV-47**, split by business rules:
1. Latvian leave rules: Latvian staff see the right allowance
2. Estonian leave rules
3. Lithuanian leave rules

## Questions for the Product Owner
1. Which country goes first for LV-47? (needed before Sprint Planning)
2. Can a manager approve part of a request, or only all or nothing? (LV-44)
```

Less than one sprint of ready work is the real finding here. Say so: Sprint Planning will struggle unless LV-44 and the first LV-47 slice get ready this week.

## Checks before you hand it over

- Every item has exactly one status, and every "Not ready" names the check that fails.
- Every split slice gives a user or a tester something to see, not a technical layer.
- No acceptance criteria, estimates or Product Owner answers are presented as agreed unless the user gave them.
- Each question for the Product Owner is specific and says which item it blocks.
- The session fits its timebox, and the plan keeps refinement under about 10% of capacity.
