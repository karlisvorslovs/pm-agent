---
name: launch-plan
description: Plan a product launch by tier, with readiness checklist, timeline, go/no-go and rollback. Use when the user is launching or releasing a feature or product, asks for a launch plan, a go-to-market plan for a feature, a release or rollout plan, a beta plan or go/no-go criteria, or says "we're launching X on [date]" or "what do we need to be ready".
argument-hint: "[what's launching, the target date, and who it's for]"
---

# Launch plan

A launch is when finished work reaches the right people with the right message, and nobody inside the company hears about it from a customer first. A good plan sizes the effort to the change: a new settings toggle doesn't need a press release, a new pricing tier does. It sets the go/no-go criteria and the rollback trigger before launch day, while people can still think clearly.

The usual failure is treating every launch the same. Everything as Tier 1 wears out marketing and support. Everything as Tier 3 means sales learn about a pricing change from a prospect.

## Input

What's launching, the target date, who it's for, and the PRD. Read the PRD, the roadmap and any earlier launch plans in the project first. Check the project notes for team names, channels and release rules such as code freezes or release trains.

## Ask first when the input is thin

In one message, at most:

1. What's launching and who is it for: a new product, a new feature, or a change to something that exists?
2. What's the target date, and is it fixed by something outside the team (an event, a contract, a regulation)?
3. Does it change pricing, packaging, personal data handling, or anything customers must act on?
4. Which metric tells you the launch worked?
5. Which teams need to be involved: support, sales, marketing, legal, docs?

Propose a tier from the answers and ask the user to confirm it. If the user says "just draft it", draft with [TBC] for dates and owners, and list your assumptions.

## Rules

- **Pick the tier with five questions.** Does it change pricing or packaging? Does it affect more than half of active customers? Must customers do something? Will the market or press notice? Does it need legal or compliance review? Three or more yes: Tier 1. One or two: Tier 2 at least. None: Tier 2 for a feature customers will notice, Tier 3 for a small improvement or fix. A pricing change or a required customer action is never below Tier 2.

| Tier | Typical change | Lead time | What it implies |
|------|----------------|-----------|-----------------|
| 1 | New product, new pricing or packaging, a change most customers notice | 6 to 8 weeks | Exec sponsor, beta, every function in the checklist, sales and support training, external announcement (blog, email, possibly press), legal review, launch-day war room |
| 2 | A meaningful feature for an existing segment | 3 to 4 weeks | In-app message and email to the affected segment, help article, release notes, support briefing, sales note if it helps deals |
| 3 | Small improvement or fix | 1 week or less | Changelog or release notes, support heads-up, docs updated |

- **Launch goals have a baseline, a target and a date.** Usually one adoption metric ("30% of eligible accounts use it within 30 days"), one business metric, and one or two guardrails (support contacts, error rate). Take targets from the PRD. Don't invent them.
- **One message per audience.** For each audience (affected customers, prospects, sales, support, partners): the message in one sentence in the customer's words, the proof, the call to action, the channel, the owner and the send date. Every claim needs proof legal would accept.
- **Readiness checklist by function. Every item has an owner and a due date.** Use the functions the company has:
  - **Engineering:** feature complete behind a flag, monitoring and alerts live, rollback tested, load tested if traffic will spike.
  - **QA:** test plan passed, no open severity 1 or 2 bugs, regression passed on supported browsers and devices.
  - **Support:** team briefed or trained, saved replies written, escalation path agreed, FAQ ready.
  - **Sales:** enablement session held, one-pager, prices live in billing and quoting tools, answers to likely objections.
  - **Marketing:** messaging approved, assets ready, emails and in-app messages scheduled, website updated.
  - **Legal:** terms and privacy notice updated if needed, data protection impact assessment if new personal data is processed, claims checked.
  - **Docs:** help articles, API docs and release notes published or scheduled, screenshots current.
- **Count the timeline back from launch day (L)** and write real dates with weekdays: L-6w, L-4w, L-2w, L-1w, go/no-go, L, L+1, L+7, review. Launch Tuesday to Thursday. Avoid Fridays, the day before a public holiday, and the last two weeks of December, when support and on-call cover is thin. Say so if the requested date breaks this.
- **Separate deploy from release.** Ship the code behind a feature flag. Roll out in steps, for example staff only, then 5%, 25%, 50% and 100%. Hold each step for at least 24 hours, or a full week if customers use the product weekly. Write the criteria for moving to the next step.
- **Run a beta when the risk is value or usability.** Closed beta: 10 to 50 chosen customers for two to four weeks, with a feedback channel and a named PM contact. Write the exit criteria before it starts.
- **Go/no-go one or two working days before launch, with one decision-maker.** Criteria are measurable: no open severity 1 or 2 bugs, error rate in beta below an agreed threshold, support trained, docs ready, legal sign-off. A missed criterion means no-go, or an exception the decision-maker writes down.
- **Rollback plan before launch day.** The trigger (for example error rate above 2% for 15 minutes, a severity 1 incident, a guardrail breached), who decides, how (flag off, and how long that takes), what customers are told, and anything that can't be undone. Emails already sent and database migrations that can't be reversed go at the top.
- **Name the launch-day roles.** Launch lead, engineering on-call, support lead, comms owner, and the person who can call a rollback. One channel for the day.
- **Book the post-launch review now.** Tier 1 and 2: 14 to 30 days after launch, comparing results with targets. Tier 3: a check at L+7.

## Output

````markdown
# Launch plan: [name]

**Launch day:** [date] · **Tier:** [1/2/3], because [reason] · **Launch lead:** [name]
**Decision-maker for go/no-go and rollback:** [name]

## Goals
| Metric | Type | Baseline | Target | By |
|--------|------|----------|--------|----|
| [metric] | Adoption / Business / Guardrail | [value] | [value, or stop if] | [date] |

## Audiences and messages
| Audience | Message | Proof | Call to action | Channel | Owner | Date |
|----------|---------|-------|----------------|---------|-------|------|

## Readiness checklist
| Function | Item | Owner | Due | Status |
|----------|------|-------|-----|--------|
| Engineering | [item] | [name] | [date] | Not started / In progress / Done |

## Timeline
| When | Date | What |
|------|------|------|
| L-4w | [date] | [milestones] |
| Go/no-go | [date] | Decision-maker: [name] |
| L | [date] | [first rollout step] |
| Review | [date] | Post-launch review |

## Rollout
**Flag:** [name] · **Steps:** [percentages and hold times] · **Move on when:** [criteria] · **Beta:** [cohort, dates, exit criteria]

## Go/no-go criteria
- [ ] [measurable criterion]

## Rollback plan
**Trigger:** · **Who decides:** · **How:** · **Time to roll back:** · **Customer message:** · **Can't be undone:**

## Launch day
| Time | What | Who |
|------|------|-----|

**Channel:** [channel name]

## Post-launch review
**Date:** [date] · **Attendees:** [names] · **Questions:** did we hit the targets, what broke, what do we change?
````

After the plan, offer once: "Want the readiness checklist as a CSV for Jira, or the launch-day messages drafted?"

## Example

Input:

```
launching recurring invoices in Ledgerline on tue 1 dec 2026, Pro plan only (4,200 accounts). no price change. closed beta with 25 customers since 2 nov. goal: 20% of Pro accounts create a recurring invoice within 30 days.
```

Output (excerpt):

```markdown
**Launch day:** Tue 1 Dec 2026 · **Tier:** 2, because it's a meaningful feature for one plan with no pricing change and nothing customers must do.

## Timeline
| When | Date | What |
|------|------|------|
| L-4w | Tue 3 Nov 2026 | Beta feedback review. Help article and messaging drafted |
| L-2w | Tue 17 Nov 2026 | Support briefing. Saved replies written. Email and in-app copy approved |
| L-1w | Tue 24 Nov 2026 | Release notes ready. Rollout steps agreed |
| Go/no-go | Mon 30 Nov 2026 | Decision-maker: [TBC] |
| L | Tue 1 Dec 2026 | Flag on for 10% of Pro accounts |
| L+1 | Wed 2 Dec 2026 | 50% if error rate and support contacts are within thresholds |
| L+2 | Thu 3 Dec 2026 | 100%. In-app message and email go out |
| Review | Tue 5 Jan 2027 | 30-day numbers taken on Thu 31 Dec 2026 |

## Rollback plan
**Trigger:** any duplicate invoice sent to a customer's client, or invoice creation errors above [TBC]% for 15 minutes.
**Can't be undone:** invoices already emailed to clients. Support needs a saved reply for this before L.
```

## Checks before you hand it over

- The tier is stated with its reason, and the plan's effort matches it.
- Every date is absolute and its weekday is correct. Check each one.
- Every checklist item has an owner and a due date, or [TBC].
- Go/no-go criteria and the rollback trigger are measurable, and one person decides.
- A post-launch review date is set.
- No target, name or date appears that the user didn't give you, except dates counted from launch day.
