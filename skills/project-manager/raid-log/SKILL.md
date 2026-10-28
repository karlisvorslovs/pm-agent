---
name: raid-log
description: Create or update a RAID log of risks, assumptions, issues and dependencies, scored and owned. Use when the user asks for a RAID log, a risk register, an issue log, wants to add, score or review risks, or pastes notes from a risk workshop or a project meeting.
argument-hint: "[path to an existing log, or paste notes, risks or issues]"
---

# RAID log

A RAID log holds what could go wrong (risks), what the plan takes on trust (assumptions), what has already gone wrong (issues) and what the project is waiting on from others (dependencies). A good one can be reviewed in 15 minutes, every open item has one owner and a next review date, and the scores move between reviews.

The usual failure is a register written at kick-off and never touched again: 60 generic risks ("resource availability"), no actions, everything scored 3 × 3. The second is mixing types. A supplier that is already late is an issue, not a risk, and it needs action this week, not a probability.

## Input

Notes from a risk workshop or a project meeting, a list of worries, a charter or plan, or an existing log.

**Look for an existing log first.** Glob for `**/*raid*`, `**/*RAID*`, `**/*risk*register*`, `**/*risk*log*` and `**/*issue*log*`. If you find one, read it and update it in place: keep its format and IDs, keep closed items, and change only what the new input changes. If its columns have no owner, score or review date, add them. Start a new log only when there is none, and say where you looked. If the log is a spreadsheet you cannot read, ask the user to paste it or export it as CSV.

## Ask first when the input is thin

Ask in one message, at most:

1. Is there an existing log, and where is it?
2. What are the key dates, budget and tolerances, or is there a charter I can read? (Impact can't be scored without them.)
3. Who can own items? Names and roles.
4. What worries you, what has already gone wrong, and what are you waiting on from people outside the team?
5. When is the next review?

If the user says "just draft it", log what you have, mark missing owners and dates as [TBC], and mark scores you proposed as "(proposed)" for the owner to confirm.

## Rules

**Put each item in the right type.** Ask in this order:
- Has it happened, or is it certain? **Issue.** No probability; it needs an action now.
- Are we waiting on someone outside the project's control? **Dependency.** It has a need-by date.
- Is the plan treating it as true without proof? **Assumption.** It has a validate-by date.
- Otherwise it is an uncertain future event: a **risk**.

A dependency with no agreed date is also a risk, and a dependency that is already late is also an issue. Log both, set the dependency to Late or At risk, and cross-reference them.

**Write risks as cause, event, effect.** "Because the vendor has one integration engineer, the API work may slip, which would delay the start of user testing by 2 to 3 weeks." "Resourcing" is a category, not a risk.

**Score probability (P) and impact (I) from 1 to 5. Score = P × I, from 1 to 25.** Use the project's scales if it has them. Otherwise use these and score impact on the worst row that applies:

| | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| Probability | Under 10% | 10 to 30% | 30 to 50% | 50 to 70% | Over 70% |
| Schedule | Under 1 week on any milestone | 1 to 2 weeks | 2 to 4 weeks | Over 4 weeks | Misses a fixed date |
| Cost | Under 1% of budget | 1 to 3% | 3 to 5% | 5 to 10% | Over 10% |
| Scope or quality | Users won't notice | Workaround needed | A deliverable fails an acceptance criterion | A deliverable can't be accepted | An objective is missed |

**Bands decide attention.** High (15 to 25): review weekly and report in the status report. Medium (8 to 12): review every two weeks. Low (1 to 6): review monthly. Any risk with impact 5 goes to the sponsor whatever its score, because a low-probability disaster is still a disaster.

**Every risk has a response.** Avoid (change the plan so it can't happen), reduce (lower P or I), transfer (contract or insurance), accept (record who accepted it and when), or escalate (outside the project's authority). Every risk scoring 8 or more has at least one action with an owner and a due date.

**Give risks a trigger.** The early sign that it is about to happen, such as "no signed purchase order by Fri 4 Dec 2026". Triggers turn reviews into checks rather than opinions.

**Issues get a priority and an action.** High: breaks a tolerance or blocks the critical path. Medium: uses float or contingency. Low: neither. If fixing it needs a decision above the PM's tolerance, escalate it and record to whom and on what date.

**Assumptions get validated before the work that depends on them.** Set the validate-by date at least two weeks before that work starts. If an assumption proves false, close it as "False" and open the issue or risk it becomes, with a cross-reference both ways.

**Dependencies record direction and a counterpart.** Inbound (we need it) or outbound (others need it from us), the named person on the other side, the need-by date and the date they have agreed to. The need-by date is a real date. If the notes only give a deadline and a lead time, work it back (for example, 15 working days before go-live) and mark it "(proposed)". Statuses: Not agreed, Agreed, At risk, Late, Delivered.

**One owner per item, and it is a person.** The owner watches the item and makes sure the actions happen, even if others do them. "IT" or "the vendor" is not an owner; name the person, or write [TBC] and list it under "Needs an owner".

**Never delete, never renumber.** Close items with a date and a reason and move them to the Closed table. IDs are never reused. A risk that happens closes as "Occurred, see I4" and the issue is opened.

**Keep it short.** A typical project has 10 to 25 open risks. Above 30, merge duplicates and close the stale ones.

## Output

When updating a file, edit it in place, then show the "What changed" summary and the rows that changed. When you can't write to the file, return the full updated log.

````markdown
# RAID log: [Project]

**Last reviewed:** [date] by [name] · **Next review:** [date]
**Open:** [n] risks ([n] high) · [n] assumptions · [n] issues · [n] dependencies

## Risks
| ID | Risk (cause, event, effect) | Owner | P | I | Score | Response | Actions (owner, due) | Trigger | Review | Status |
|----|-----------------------------|-------|---|---|-------|----------|----------------------|---------|--------|--------|

## Assumptions
| ID | Assumption | Impact if wrong | Owner | Validate by | Status |
|----|------------|-----------------|-------|-------------|--------|

## Issues
| ID | Issue | Impact | Priority | Owner | Action and due date | Escalated to | Raised | Status |
|----|-------|--------|----------|-------|---------------------|--------------|--------|--------|

## Dependencies
| ID | Dependency | Direction | Counterpart | Owner | Need by | Agreed date | Status |
|----|------------|-----------|-------------|-------|---------|-------------|--------|

## Closed
| ID | Type | Item | Closed on | Reason |
|----|------|------|-----------|--------|

## What changed since last review ([date])
- **New:** [IDs and one line each]
- **Closed:** [IDs and why]
- **Score changes:** [ID: from [n] to [n], because...]
- **Overdue:** [actions past due, items past their review date]
- **Needs an owner or a decision:** [IDs, and who should decide by when]
````

Sort risks by score, highest first. For a first review, "What changed" lists everything as new and names the gaps.

## Example

Input:

```
risk review thu 12 nov 2026, Project Larch (contact centre phone system move), go-live mon 1 mar 2027
- number porting: carrier needs 30 working days notice, Jakub to submit
- Ines worried agents won't get trained in time, feb is peak season
- headsets ordered, supplier hasn't confirmed a delivery date
- we're assuming call recordings can stay on the old system until 2028
- test environment still not set up, was due last fri
```

Output (excerpt):

```markdown
## Risks
| ID | Risk (cause, event, effect) | Owner | P | I | Score | Response | Actions (owner, due) | Trigger | Review | Status |
|----|-----------------------------|-------|---|---|-------|----------|----------------------|---------|--------|--------|
| R1 | Because February is peak season, agents may not be released for training, which would mean going live with untrained agents or moving go-live | Ines | 3 (proposed) | 4 (proposed) | 12 | Reduce | Ines: agree February training slots with the rota owner, due [TBC] | Training rota not agreed by Mon 18 Jan 2027, 6 weeks before go-live | Thu 26 Nov 2026 | Open |
| R2 | Because the headset supplier has not confirmed a delivery date (see D2), headsets may arrive after training starts, which would delay training and go-live | [TBC] | [TBC] | 4 (proposed) | [TBC] | Reduce | [TBC]: get a written delivery date from the supplier, due [TBC] | No confirmed date by [TBC] | Thu 19 Nov 2026 | Open |

## Assumptions
| ID | Assumption | Impact if wrong | Owner | Validate by | Status |
|----|------------|-----------------|-------|-------------|--------|
| A1 | Call recordings can stay on the old system until 2028 | Recordings must be migrated or archived, not in scope or budget | [TBC] | [TBC], before decommissioning is planned | Unvalidated |

## Issues
| ID | Issue | Impact | Priority | Owner | Action and due date | Escalated to | Raised | Status |
|----|-------|--------|----------|-------|---------------------|--------------|--------|--------|
| I1 | Test environment not set up, was due Fri 6 Nov 2026 | [TBC]: which testing it blocks | [TBC]: High if it blocks the critical path | [TBC] | [TBC] | | Thu 12 Nov 2026 | Open |

## Dependencies
| ID | Dependency | Direction | Counterpart | Owner | Need by | Agreed date | Status |
|----|------------|-----------|-------------|-------|---------|-------------|--------|
| D1 | Number porting by the carrier | Inbound | [TBC] | Jakub | Request in by Mon 18 Jan 2027 (30 working days before go-live) | Not submitted | Not agreed |
| D2 | Headset delivery | Inbound | Headset supplier [TBC] | [TBC] | [TBC], before training starts | None | Not agreed |

## What changed since last review (first review)
- **New:** R1, R2, A1, I1, D1, D2.
- **Needs an owner:** R2, A1, I1, D2.
- **Needs a decision:** priority of I1 depends on whether testing is on the critical path.
```

## Checks before you hand it over

- You looked for an existing log, and kept its IDs and closed items if one exists.
- Anything that has already happened is an issue, not a risk.
- Every risk score is P × I with both between 1 and 5, and proposed scores are marked.
- Every open item has a named owner or [TBC], and a review or due date.
- Every dependency has a real need-by date, worked back from the deadline and marked "(proposed)" if the notes don't give one.
- The "What changed" summary is there and matches the tables.
- No owner, date or figure appears that is not in the input or derived from it.
