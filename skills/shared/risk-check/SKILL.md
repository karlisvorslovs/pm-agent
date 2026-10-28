---
name: risk-check
description: Run a quick pre-mortem and risk scan on a plan, launch, sprint or decision. Use when the user asks "what could go wrong", "sanity check this plan", "do a pre-mortem", "what are the risks", "am I missing anything", or is about to commit to a date, a budget or a launch.
argument-hint: "[paste the plan, or describe what you're about to commit to]"
---

# Risk check

This is the 20-minute version of risk management: a pre-mortem and a structured scan, so the user walks into a commitment knowing the five things most likely to hurt them. It is not a full RAID log. Use /raid-log to keep risks tracked over time.

The usual failures are listing generic risks that apply to every project ("scope creep", "resource constraints"), scoring everything as high, and naming risks with no early warning sign, so nobody notices until it is an issue. A useful risk is specific to this plan, has a trigger you can watch, and has an owner.

## Input

A plan, a launch date, a sprint forecast, a decision about to be made, or a description of one. If there is a plan, charter, PRD, backlog or RAID log in the project, read it first.

## Ask first when the input is thin

Ask in one message, at most:

1. What are you about to commit to? (The date, the scope, the budget, the launch.)
2. What is fixed and what can move?
3. Who and what do you depend on outside your own team?
4. What has gone wrong on similar work before?

If the user says "just check it", work from what you have and list the assumptions you made.

## How to run it

1. **Pre-mortem.** Imagine it is three months after the commitment and it has failed badly. Write the five most plausible reasons, each as one specific sentence about this plan.
2. **Scan the usual weak spots** and keep only what applies:
   - People and capacity: key-person dependency, holidays, part-time allocation, hiring.
   - Dependencies: other teams, vendors, approvals, data, environments.
   - Scope: unclear requirements, late changes, hidden work such as migration, testing or training.
   - Schedule: fixed dates, optimistic estimates, no buffer, work that starts late.
   - Technology: new tech, integrations, performance, security, data quality.
   - Money: fixed budget, exchange rates, licence costs.
   - Legal and compliance: contracts, data protection, accessibility, sector rules.
   - Adoption and change: users who have to change how they work, training, support load.
3. **Score** each risk 1 to 5 for probability and for impact. The score is the product (1 to 25). Be honest: no more than a third of the risks should score 15 or above.
4. **Plan a response** for the top five: avoid, reduce, transfer or accept. Each response is an action with an owner and a date.
5. **Name the early warning sign** for each top risk: the thing you would see two to four weeks before it hits.
6. **Find the assumptions** the plan rests on that nobody has checked, and say how to check each one cheaply.

## Fit the active role

- **Product manager:** also check the four product risks: value (will they want it), usability (can they use it), feasibility (can we build it), viability (does it work for the business).
- **Scrum master:** focus on risks to the Sprint Goal: capacity, unclear items, dependencies inside the sprint, carry-over.
- **Agile coach:** focus on change risks: sponsorship, teams' capacity to change while delivering, old habits, measures that reward the wrong behaviour.
- **Project manager:** frame it against the baseline, and offer to add the top risks to the RAID log.

## Output

````markdown
# Risk check: [what is being committed to], [date]

**Bottom line:** [One or two sentences. Is the commitment sound, sound with conditions, or not sound? What is the single biggest risk?]

## Top risks
| # | Risk (if... then...) | P | I | Score | Early warning sign | Response | Owner | By |
|---|----------------------|---|---|-------|--------------------|----------|-------|----|
| 1 | If [cause], then [effect on the commitment] | 4 | 4 | 16 | [what you'd see first] | Reduce: [action] | [name] | [date] |

## Assumptions to check
| Assumption | How to check it cheaply | By |
|------------|-------------------------|----|

## Watch list
- [Lower risks worth a glance at each review]

## What would make me say stop
- [The condition under which the user should go back to the sponsor or the team before committing]
````

Offer once at the end: "Want me to add these to the RAID log?"

## Example

Input: "We're telling the client we'll launch the new booking flow on Mon 7 Dec. 3 devs, one is on holiday 23 Nov to 4 Dec. Payment integration with their bank's API isn't started, their IT has been slow. Design is 80% done."

Output (excerpt):

```markdown
# Risk check: booking flow launch on Mon 7 Dec 2026

**Bottom line:** Sound only if the bank API is working in a test environment by mid-November. That integration has not started, it depends on a client team that has been slow, and one of three developers is away for the last two weeks.

## Top risks
| # | Risk (if... then...) | P | I | Score | Early warning sign | Response | Owner | By |
|---|----------------------|---|---|-------|--------------------|----------|-------|----|
| 1 | If the client's IT does not provide bank API test access soon, then the payment integration cannot finish before 7 Dec | 4 | 5 | 20 | No test credentials by Fri 13 Nov | Reduce: ask the client sponsor to name an IT contact and a date for access this week | [TBC] | Fri 6 Nov |
| 2 | If integration work lands during the 23 Nov to 4 Dec holiday, then two developers carry the riskiest work with no slack | 3 | 4 | 12 | Integration still open on Fri 20 Nov | Reduce: put the developer who is away on integration first, before 23 Nov | [TBC] | Mon 9 Nov |
```

## Checks before you hand it over

- Every risk is specific to this plan. Delete any that would fit every project.
- Each top risk has a score, an early warning sign, a response with an owner, and a date.
- Scores are spread out, not all high.
- Nothing in the output assumes facts the user did not give. Gaps are [TBC].
