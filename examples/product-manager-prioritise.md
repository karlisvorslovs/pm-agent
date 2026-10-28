# Prioritising a quarter with RICE

Five candidate features and a capacity limit. The skill picks RICE, shows every calculation, is honest about confidence, draws the line at capacity, and checks how sensitive the ranking is to the shakiest numbers.

- **Role:** Product manager (`/role product`)
- **Skill:** `/prioritise` (picked automatically, the prompt does not name it)
- **Run:** Claude Code 2.1.310, 28 Oct 2026. Names and companies are invented.

## Prompt

```text
Help me rank these for Q1. We're a B2B invoicing app with about 4,000 active companies. Team capacity is about 6 person-months.
1. Bulk invoice export to CSV: about 1,200 companies a quarter would use it, high impact for their accountants, 1 person-month, we have lots of support tickets asking for it.
2. Recurring invoices: about 2,500 a quarter, massive impact (top churn reason in our exit survey), 4 person-months, we're confident.
3. Dark mode: about 3,000 a quarter, minimal impact, 0.5 person-months, low confidence it matters to anyone.
4. Xero integration: about 800 a quarter, high impact, 3 person-months, medium confidence (only 6 customer interviews so far).
5. AI receipt scanning: about 1,500 a quarter, medium impact, 5 person-months, low confidence.
```

## Output

# Prioritisation: Q1 2027 candidates

**Goal (assumed):** cut churn and support load. You named recurring invoices as the top churn reason, so I've treated retention as the goal. Tell me if it's something else.
**Capacity:** 6 person-months
**Method:** RICE, because the items are comparable and each one has reach and an effort estimate.
**Committed work:** none listed. If there are bug fixes, security work or contract commitments, take their effort out of the 6 first.

## Scores

| Rank | Item | Reach /qtr | Impact | Confidence | Effort (PM) | Working | Score | Evidence |
|---|---|---|---|---|---|---|---|---|
| 1 | Bulk CSV export | 1,200 | 2 (high) | 80% | 1 | 1,200 × 2 × 0.8 ÷ 1 | 1,920 | Repeated support tickets (a pattern). Reach is an estimate. |
| 2 | Recurring invoices | 2,500 | 3 (massive) | 80% | 4 | 2,500 × 3 × 0.8 ÷ 4 | 1,500 | Top churn reason in the exit survey. Reach is an estimate. |
| 3 | Dark mode | 3,000 | 0.25 (minimal) | 50% | 0.5 | 3,000 × 0.25 × 0.5 ÷ 0.5 | 750 | None. Mostly a guess. |
| 4 | Xero integration | 800 | 2 (high) | 50% | 3 | 800 × 2 × 0.5 ÷ 3 | 267 | 6 interviews, which is thin. |
| 5 | AI receipt scanning | 1,500 | 1 (medium) | 50% | 5 | 1,500 × 1 × 0.5 ÷ 5 | 150 | None. Low confidence. |

On confidence:
- I put recurring invoices at 80%, not 100%, even though you're confident. An exit survey is strong evidence, but it's stated reasons rather than behaviour, and both reach and effort are estimates.
- Dark mode and AI scanning sit at 50%. That's the lowest score the method allows, so both are scored generously.

CSV export and recurring invoices are 22% apart. That's just outside a tie, so treat them as close.

## The line

**Above the line (5 of 6 person-months):**
1. **Bulk CSV export (1 PM).** Ship it first. It's a quick win, it should cut support tickets, and accountants use it.
2. **Recurring invoices (4 PM).** This is the strategic bet. Its score is slightly lower than CSV export, but it's the only item that goes straight at your top churn reason, and it reaches 62% of your active companies.

**The remaining 1 PM:** hold 0.5 PM as contingency for recurring invoices, since a 4 PM build is the most likely thing to overrun. Spend the other 0.5 PM on discovery for Xero (more interviews, or checking how many churned accounts used Xero).

**Dark mode** ranks 3rd on score, but I'd keep it as a fill-in, not a commitment. Build it only if recurring invoices is on track at mid-quarter.

**Cut:**
- **Xero integration.** About 800 companies a quarter keep reconciling by hand. The risk is that Xero is a hidden churn driver. Check the exit survey for accounting-sync complaints before Q2 planning. Tell sales and CS so they can set expectations.
- **AI receipt scanning.** At 5 PM it can't fit alongside recurring invoices. With low confidence it belongs in discovery, not delivery. Find the smallest test that shows whether users would change behaviour, for example a concierge or manual version for 20 accounts [TBC: test design].

## Sensitivity

- **CSV export reach** (estimate): if it's 600 rather than 1,200, the score drops to 960 and CSV falls below recurring invoices. Both stay above the line, so the plan doesn't change.
- **Recurring invoices confidence:** at 100% the score is 1,875, a tie with CSV export. Same plan.
- **Recurring invoices effort:** this is the real risk. At 6 PM the score is 1,000, still 2nd, but it would use all your capacity and push CSV export out. Get the team to cut an MVP scope (for example monthly schedules only, then pause and edit) that fits 3 to 4 PM.
- **Xero confidence:** at 80% the score is 427. Still 4th. The order doesn't change.

## Outcomes to track

- **Recurring invoices:** churn among companies citing "no recurring invoices". Baseline [TBC], target [TBC], measured by end of Q2 2027.
- **CSV export:** export-related support tickets per month. Baseline [TBC], target [TBC], measured by end of Q1 2027.

## Decisions needed

- Confirm retention is the Q1 goal (from: you / leadership, before Q1 planning).
- Engineering to confirm the 4 PM recurring invoices estimate and an MVP cut (from: eng lead, before Q1 planning).
- Agree whether Xero discovery gets 0.5 PM in Q1 (from: you).

Want me to turn what's above the line into a Now / Next / Later roadmap?
