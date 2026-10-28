# Weekly status report

A week of messy notes with a slipped milestone, an overspend and a decision the sponsor has to make. The skill sets Amber with evidence per area, counts the slip in working days, gives options with a recommendation, and lists what it could not know instead of guessing.

- **Role:** Project manager (`/role pm`)
- **Skill:** `/status-report`
- **Run:** Claude Code 2.1.310, 28 Oct 2026. Names and companies are invented.

## Prompt

```text
/status-report Weekly status for Project Atlas (new warehouse management system), week 6 of 20, report date Fri 30 Oct 2026. Sponsor: Dana Ruiz.
Done this week: barcode scanner pilot finished in the Riga warehouse, 96% scan success (target 98%, low-light aisles are the problem).
Data migration dry run 2 slipped: the vendor's export tool failed twice. Now planned Wed 4 Nov, was Wed 28 Oct.
Milestone "Data migration signed off": baseline Fri 13 Nov, forecast Fri 20 Nov. Go-live baseline Mon 1 Feb 2027 still holds if sign-off happens by 20 Nov.
Budget: EUR 412k spent of EUR 1.1M. Planned spend by now was EUR 390k (extra vendor days).
Risk: the Tallinn site go-live overlaps with December peak season.
Need Dana to decide by Fri 6 Nov whether Tallinn go-live moves to January.
Next week: dry run 2, scanner fix for low-light aisles, first draft of the training plan.
```

## Output

# Project Atlas status report, week ending Fri 30 Oct 2026 (week 6 of 20)

**Overall: Amber** (last week: [TBC]) · **Sponsor:** Dana Ruiz · **PM:** [TBC]

**Headline:** Atlas is Amber because data migration sign-off is now forecast 5 working days late (Fri 20 Nov against a baseline of Fri 13 Nov 2026), after the vendor's export tool failed twice. That leaves no buffer before go-live on Mon 1 Feb 2027, and spend is EUR 22k ahead of plan. Dana, please decide by Fri 6 Nov 2026 whether the Tallinn go-live moves out of the December peak season into January.

| Area | RAG | Last week | Evidence |
|------|-----|-----------|----------|
| Schedule | Amber | [TBC] | Data migration sign-off forecast Fri 20 Nov against a Fri 13 Nov baseline. That is +5 working days, within the default tolerance of 10 days. Go-live on Mon 1 Feb 2027 holds only if sign-off happens by Fri 20 Nov. |
| Budget | Amber | [TBC] | EUR 412k spent against EUR 390k planned to date (+EUR 22k, +5.6%), caused by extra vendor days. That is 37% of the EUR 1.1M budget used at week 6 of 20. Forecast at completion: [TBC]. |
| Scope | [TBC] | [TBC] | No scope or change request information this week. |
| Risks and issues | Amber | [TBC] | Vendor export tool failed twice. Scanner scan success is 96% against a 98% target. Tallinn go-live overlaps the December peak season, and Dana needs to decide on it. |

## Progress against plan
- **Planned and done:** Barcode scanner pilot completed in the Riga warehouse. Scan success was 96% against the 98% target. Low-light aisles are the cause.
- **Planned, not done:** Data migration dry run 2. The vendor's export tool failed twice. It moved from Wed 28 Oct to Wed 4 Nov 2026.

## Milestones
| Milestone | Baseline | Forecast | Variance (working days) | RAG |
|-----------|----------|----------|-------------------------|-----|
| Data migration dry run 2 | Wed 28 Oct 2026 | Wed 4 Nov 2026 | +5 | Amber |
| Scanner low-light fix | [TBC] | [TBC] | [TBC] | [TBC] |
| Data migration signed off | Fri 13 Nov 2026 | Fri 20 Nov 2026 | +5 | Amber |
| Tallinn go-live | December 2026 [TBC date] | Pending decision | [TBC] | Amber |
| Go-live | Mon 1 Feb 2027 | Mon 1 Feb 2027 | 0, no buffer left | Amber |

## Top risks and issues
| ID | Risk or issue | Score or priority | Action | Owner | Due |
|----|---------------|-------------------|--------|-------|-----|
| [TBC] | Risk: Tallinn go-live during the December peak season disrupts operations | [TBC] | Sponsor decides whether to move it to January | Dana Ruiz | Fri 6 Nov 2026 |
| [TBC] | Issue: vendor export tool failed twice, so dry run 2 slipped | [TBC] | Rerun dry run 2 | [TBC] (vendor) | Wed 4 Nov 2026 |
| [TBC] | Risk: dry run 2 fails again, sign-off goes past Fri 20 Nov and the Mon 1 Feb 2027 go-live is at risk | [TBC] | Get the vendor to confirm the export fix before Wed 4 Nov | [TBC] | [TBC] |
| [TBC] | Issue: 96% scan success against a 98% target in low-light aisles | [TBC] | Fix scanning in low-light aisles | [TBC] | [TBC] |
| [TBC] | Issue: spend EUR 22k ahead of plan from extra vendor days | [TBC] | Confirm the forecast at completion and who pays for the days | [TBC] | [TBC] |

## Options and recommendation: Tallinn go-live (risks and schedule)
| Option | Time | Cost | Scope and quality | Risk |
|--------|------|------|-------------------|------|
| A. Move Tallinn go-live to January | Tallinn moves to [TBC] January date | [TBC] | No change | Must not squeeze the Mon 1 Feb 2027 go-live |
| B. Do nothing, go live in December | On plan | None extra | No change | Cutover problems hit the business at peak volume, with migration buffer already used |

**Recommendation:** A, if the January date doesn't push Mon 1 Feb 2027. The migration slip has already used the buffer, and a cutover failure during peak season costs more than a few weeks' delay. This depends on the cost of A, still [TBC].

## Options and recommendation: migration slip (schedule and budget)
| Option | Time | Cost | Scope and quality | Risk |
|--------|------|------|-------------------|------|
| A. Vendor proves the export fix before Wed 4 Nov and covers the extra days | Keeps sign-off at Fri 20 Nov | Up to EUR 22k recovered [TBC, depends on the contract] | No change | Vendor may dispute the cost |
| B. Do nothing | Sign-off at Fri 20 Nov only if dry run 2 passes first time | Overspend grows with each extra vendor day | No change | A third failure puts go-live at risk |

**Recommendation:** A. The failures are on the vendor's side, and a tested fix is the only thing protecting the Fri 20 Nov date.

## Decisions needed
| Decision | From | By | If late |
|----------|------|----|---------|
| Move the Tallinn go-live from December to January? | Dana Ruiz | Fri 6 Nov 2026 | [TBC: what planning is blocked, e.g. Tallinn cutover and training] |

## Next week
- Data migration dry run 2, Wed 4 Nov 2026
- Scanner fix for low-light aisles
- First draft of the training plan

---

**Assumptions and gaps**

I found no charter, schedule, RAID log or last week's report in the project folder.

- **Tolerances:** I used the defaults of 10 working days per milestone and 5% of budget.
- **Dry run 2 baseline:** I treated Wed 28 Oct as the baseline date. Please confirm.
- **Go-live scope:** I read the Mon 1 Feb 2027 go-live as the overall go-live, separate from Tallinn. The Tallinn baseline date is missing.
- **Working days:** Variances count Mon to Fri. Wed 18 Nov is a Latvian public holiday, so the sign-off slip is 4 working days on a Latvian calendar.
- **Gaps to fill:** PM name, last week's RAG, forecast at completion, scope status, RAID IDs, scores and owners, and the cost of moving Tallinn.

Want a shorter version for email or Slack?
