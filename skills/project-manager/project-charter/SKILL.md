---
name: project-charter
description: Draft a project charter with objectives, scope, milestones, budget, governance and risks. Use when the user is starting a project and asks for a charter, a project initiation document (PID), a project brief, terms of reference, or "what do we need to agree before we start".
argument-hint: "[project name, or paste the brief, email or business case]"
---

# Project charter

A charter authorises the project and the project manager, and sets the boundaries that every later change is judged against. A good one fits on two to four pages, names one sponsor, says which constraint cannot move, and is as clear about what is out of scope as about what is in.

The usual failure is a charter full of activities and no measures: "implement the new CRM" as the objective, no baseline, an empty out-of-scope list and no tolerances. Then nobody can say at the end whether the project worked, and every small slip either goes to the sponsor or none does.

## Input

A brief, an email from the sponsor, a business case, a statement of work, or a few lines in chat. Before asking anything, look for existing material with Glob (`**/*business*case*`, `**/*brief*`, `**/*sow*`, `**/*charter*`, `**/*pid*`) and read it. If a charter already exists, update it and raise the version number rather than start again.

## Ask first when the input is thin

Ask in one message, at most:

1. Who is the sponsor: the one person who owns the business case and can stop the project?
2. Which of scope, date, budget and quality cannot move, and why? (A date set by a contract end or a regulation is fixed. "The CEO would like it by March" is a target.)
3. What is the deadline, and what happens if it is missed?
4. What is the budget, is it approved or still an estimate, and does it include internal staff time?
5. What problem does this solve, and how would you measure that it is solved?

Infer instead of asking: the project manager (the user, unless they say otherwise), the delivery method from how they describe the work, and the obvious scope boundaries from the brief. If the user says "just draft it", draft with [TBC] in every gap and list the assumptions you made at the end.

## Rules

- **Objectives are outcomes with a baseline, a target and a date.** "Implement a new CRM" is a deliverable. "Cut average quote turnaround from 4 working days to 1 by Wed 30 Jun 2027" is an objective. Write two to four. If the baseline is unknown, write [TBC] and add an action to measure it before the first stage gate. Never invent a target: propose one only if the user asks, and label it as a proposal.
- **Deliverables are things someone can accept.** Each has a named acceptor and acceptance criteria a tester could check. "User guide" is weak. "User guide for drivers, tested with five drivers who have not seen the app" is checkable.
- **Out of scope needs at least three items** that someone could reasonably assume are in. Good candidates: other sites or countries, phase 2 features, history data migration, changes to neighbouring systems, training beyond go-live, business-as-usual support. Mark items you inferred as "to confirm".
- **Name the fixed constraint and the flex.** If the date is fixed, scope is usually what gives, so name the first two things to drop. A fixed constraint has zero tolerance; say so in the governance table.
- **Milestones are events, not tasks.** Five to eight, each with an absolute date and the person who accepts it: "Design signed off by the Head of Operations, Fri 15 Jan 2027". Leave dates [TBC] rather than guess; /wbs-schedule produces them.
- **The budget shows where the money goes.** Split it into internal people, external people, vendors and licences, other costs and contingency. As a guide, contingency is 5 to 10% for work the team has done before and 15 to 25% for new technology or a new supplier. Contingency is part of the project budget, usually managed by the PM, and covers the known risks. Management reserve is held by the sponsor outside the project budget and covers the unknowns. Never invent figures: if the user gives only a total, show the split as [TBC].
- **One sponsor.** A committee is not a sponsor. The steering group is three to six people: the sponsor (chair), a senior user who speaks for the people who will use the result, and a senior supplier who speaks for those building it. It meets monthly and at each stage gate.
- **Tolerances are numbers.** At minimum set time, cost and scope tolerances; PRINCE2 adds quality, risk and benefits. A common pattern: the PM handles forecast variances of up to 5 working days on any milestone and 2% of budget, the sponsor up to 10 working days and 5%, and anything beyond goes to the steering group. Tolerances apply to the total forecast, not to each change separately. When a forecast will break a tolerance, the PM raises an exception to the next level within 2 working days, with options.
- **Assumptions and constraints are different things.** An assumption is believed true but not proven ("the vendor API is ready by Mon 1 Feb 2027"). It gets an owner and a validate-by date and goes into the RAID log. A constraint is a limit you work within: a fixed date, a budget cap, a mandated platform, a change freeze.
- **Top risks: three to five, scored.** Write each as cause, event, effect. Score probability and impact 1 to 5; the score is P × I. Each has an owner and a response. The full list lives in the RAID log (/raid-log).
- **Success criteria say how the sponsor will judge the project at closure.** Separate project success (delivered within tolerance, deliverables accepted) from benefits, which are measured after go-live, usually 3 to 6 months later, by a named benefits owner.
- **Approval is a recorded decision.** Name each approver and leave the date blank until they approve. A charter is not approved because it was sent.

## Output

````markdown
# Project charter: [Project name]

**Version:** [0.1 draft] · **Date:** [date] · **Status:** Draft for sponsor review
**Sponsor:** [name, role] · **Project manager:** [name]
**Fixed constraint:** [scope / date / budget / quality], because [reason]. **Flexes first:** [what]

## 1. Background and problem
[Three to six sentences: what is wrong today, for whom, with numbers. Why now. What happens if we do nothing.]

## 2. Objectives
| # | Objective | Baseline | Target | By | Measured by |
|---|-----------|----------|--------|----|-------------|

## 3. Scope
**In scope**
- [Item]

**Out of scope**
- [Item, and where it goes instead: later phase, other project, not planned]

## 4. Deliverables
| # | Deliverable | Accepted by | Acceptance criteria |
|---|-------------|-------------|---------------------|

## 5. Milestones
| # | Milestone | Date | Accepted by |
|---|-----------|------|-------------|

## 6. Budget and resources
| Item | Amount | Notes |
|------|--------|-------|
| Internal people | | [days or FTE, and whether charged to the project] |
| External people | | |
| Vendors and licences | | [one-off and running costs separately] |
| Other | | |
| Contingency ([x]%) | | Held by the PM for the risks in section 10 |
| **Total** | | [Approved / estimate] |

Management reserve: [amount or none], held by [sponsor].

| Role | Name | Commitment |
|------|------|------------|

## 7. Success criteria
**Project:** [delivered within tolerance; deliverables accepted]
**Benefits:** [measure, target, measured on (date) by (benefits owner)]

## 8. Governance
| Role | Name | Responsibilities |
|------|------|------------------|
| Sponsor | | Owns the business case, chairs the steering group, decides changes within the sponsor tolerances below |
| Project manager | | Day-to-day delivery within tolerances, weekly status report |
| Senior user | | Requirements and acceptance |
| Senior supplier | | Delivery resources and technical quality |

**Steering group:** [names]. Meets [monthly] and at each stage gate.

| Change to | PM decides | Sponsor decides | Steering group decides |
|-----------|-----------|-----------------|------------------------|
| Time | Up to [5] working days on any milestone | Up to [10] working days | Beyond that, or any move of a fixed date |
| Cost | Up to [£ / 2%] | Up to [5%] | Beyond that |
| Scope | Within a deliverable, no time or cost impact | Changes to a deliverable | Adding or removing a deliverable |
| Risk | Accept risks scoring 1 to 6 | Accept risks scoring 8 to 12 | Accept risks scoring 15 or more, or any risk with impact 5 |

**Exceptions:** when a forecast will break a tolerance, the PM tells the next level within [2] working days, with options and a recommendation.
**Reporting:** weekly status report to the sponsor; monthly report to the steering group.

## 9. Assumptions and constraints
| # | Assumption | Owner | Validate by |
|---|------------|-------|-------------|

**Constraints:** [fixed date, budget cap, mandated platform, change freeze]

## 10. Top risks
| # | Risk (cause, event, effect) | P | I | Score | Owner | Response |
|---|-----------------------------|---|---|-------|-------|----------|

## 11. Open points
| # | Question | Who answers | By |
|---|----------|-------------|----|

## 12. Approvals
| Role | Name | Decision | Date |
|------|------|----------|------|
| Sponsor | | Approved / Approved with changes / Rejected | |
````

Keep the section numbers so later documents can refer to them ("charter section 8"). If a section has no input at all, keep the heading and write [TBC] with the question that would fill it.

## Example

Input:

```
new project: driver app to replace paper delivery notes at Halden Freight. sponsor
Marta Lindqvist (COO). scanning contract with Paperlane ends 31 mar 2027, notice given,
so that's the hard date. budget 140k approved incl contingency. 85 drivers, 3 depots.
invoices go out 6 working days after delivery on average because of the paper.
no customer tracking portal this time.
```

Output (excerpt):

```markdown
**Sponsor:** Marta Lindqvist, COO · **Project manager:** [you]
**Fixed constraint:** Date. The Paperlane scanning contract ends Wed 31 Mar 2027 and notice has been given. **Flexes first:** scope. First items to drop: [TBC with sponsor].

## 2. Objectives
| # | Objective | Baseline | Target | By | Measured by |
|---|-----------|----------|--------|----|-------------|
| 1 | Cut the time from delivery to invoice | 6 working days on average | [TBC: sponsor to set] | [TBC] | Invoice date minus delivery date, from the finance system |
| 2 | Retire paper delivery notes | 3 depots, 85 drivers on paper | 0 depots on paper | Wed 31 Mar 2027 | Depot manager sign-off at each depot |

**Out of scope**
- Customer tracking portal (agreed: later phase).
- To confirm: subcontracted drivers; changes to the finance system beyond receiving delivery data; replacing driver handsets.

## 6. Budget and resources
| Item | Amount | Notes |
|------|--------|-------|
| Split by category | [TBC] | Total approved, split not given |
| Contingency ([TBC]%) | [TBC] | Inside the £140,000, not on top |
| **Total** | **£140,000** | Approved, includes contingency |

## 11. Open points
| # | Question | Who answers | By |
|---|----------|-------------|----|
| 1 | Target for objective 1 | Marta Lindqvist | [TBC] |
| 2 | Steering group members | Marta Lindqvist | [TBC] |
| 3 | Does the £140,000 include internal staff time? | Marta Lindqvist | [TBC] |
```

## Checks before you hand it over

- One sponsor is named, or the gap is the first open point.
- The fixed constraint and what flexes first are stated.
- Every objective has a baseline, a target and a date, or [TBC] with an owner in the open points.
- Out of scope has at least three items, with inferred ones marked "to confirm".
- Tolerances are numbers, and the fixed constraint has zero tolerance.
- No name, figure or date appears that the user did not give, and every weekday matches its date.
