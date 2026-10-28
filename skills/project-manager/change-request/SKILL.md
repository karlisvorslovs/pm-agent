---
name: change-request
description: Write a change request with impacts, options including "do nothing", and the right approver. Use when someone asks for something new or different mid-project, or the user says "change request", "CR", "scope change", "they want to add", "can we squeeze in", "the client changed their mind", or needs to assess, route or log a change.
argument-hint: "[describe the change, or paste the email or ticket asking for it]"
---

# Change request

A change request turns "can we just add..." into a decision made by someone with the authority to make it, who knows what it costs. A good one states the change in one sentence, puts a number on every impact, treats "do nothing" as a real option, and goes to the right person under the agreed tolerances.

The usual failure is a change agreed in a corridor and absorbed quietly, so three months later the project is late and nobody can say why. The second is assessing cost only, and missing that the change takes the testers off the critical path for two weeks.

## Input

An email, ticket or meeting note asking for the change, plus the charter (baseline and tolerances), the schedule, the RAID log and the change log. Look for them with Glob (`**/*charter*`, `**/*change*log*`, `**/CR-*`, `**/*schedule*`, `**/*raid*`) and read them first. Take the next CR number from the change log.

## Ask first when the input is thin

Ask in one message, at most:

1. What exactly is being asked for, by whom, and on what date?
2. Why do they want it, and what happens if we don't do it?
3. What is the effort estimate, as a range, who made it, and does it include testing?
4. What are the tolerances and who can approve what, or is there a charter I can read?
5. Is there a date after which the change gets harder or more expensive?

Never estimate the effort yourself. If the user says "just draft it", write the CR with [TBC] in each impact and say who needs to estimate what.

## Rules

- **Know what is a change.** Anything that alters baselined scope, dates, cost, quality criteria or benefits is a change, including removing scope and moving a deadline. A defect against agreed acceptance criteria is not a change; it is fixed inside the baseline. A clarification that fits the existing acceptance criteria is not a change either, but record it in the decision log (/decision-log).
- **One change per request.** Bundles hide a weak change behind a strong one.
- **The reason is a business reason.** "The client asked" is who, not why. Write the outcome they expect, with a number if they gave one.
- **Assess all six areas, for the option as requested:**
  - **Scope:** deliverables added, changed or removed.
  - **Schedule:** is the work on the critical path? If it fits inside float, say the end date doesn't move and how much float it uses. If it doesn't, give the new milestone dates.
  - **Cost:** one-off cost (effort × rate, plus purchases) and running cost per year (licences, support) separately. If the estimate covers only development, ask for testing, documentation and deployment; on software work they often add 30 to 50%.
  - **Quality:** acceptance criteria that change, test coverage, technical debt.
  - **Risk:** new risks or changed scores, scored P × I from 1 to 5.
  - **Benefits:** what the change adds to or takes from the business case.
- **Ranges, not single numbers.** Carry the estimate range through to dates and cost. A point estimate on a change nobody has designed yet is a guess.
- **At least three options:** do nothing, the change as requested, and an alternative (a smaller version, a later release, or swapping out work of the same size). Give each its effect on time, cost, scope and risk.
- **One recommendation,** in two or three sentences, saying why.
- **Route on the upper end of the range.** Compare the impact with the tolerances in the charter. The approver is the lowest level whose tolerance covers every impact at the upper end, so nobody approves something that turns out to be beyond their authority. If any impact is beyond the sponsor, it goes to the steering group.
- **Tolerances are cumulative.** They apply to the forecast, not to each change. Three £4,000 changes under a £5,000 limit are £12,000 against the project. Show how much tolerance earlier changes have already used.
- **The approver can differ by option.** If the recommended option fits a lower level but the option as requested does not, say who approves each.
- **Give a decision-by date** when waiting costs money or time, and say what happens if the decision is late.
- **No work before approval.** If work has already started, record it in the CR and raise it as an issue in the RAID log.
- **Once decided:** update the change log, rebaseline the schedule and budget if approved, update the RAID log, and tell the requester and the team. A rejected CR is still logged.

## Output

````markdown
# [CR-nnn]: [Title]

**Raised by:** [name, organisation] on [date] · **Assessed by:** [PM] · **Decision needed by:** [date]
**Status:** Draft / Submitted / Approved / Rejected / Deferred

## The change
[One or two sentences, in terms of deliverables.]

## Why
[The business reason and the outcome expected. What happens if we don't do it.]

## Impact of the change as requested
| Area | Impact | Basis and confidence |
|------|--------|----------------------|
| Scope | | |
| Schedule | | [critical path or not; float used] |
| Cost | One-off: [range]. Running: [per year] | [who estimated, at what rate] |
| Quality | | |
| Risk | | [new or changed risks with P × I] |
| Benefits | | |

## Options
| Option | Scope | Time | Cost | Risk |
|--------|-------|------|------|------|
| A. Do nothing | | | | |
| B. As requested | | | | |
| C. [Alternative] | | | | |

## Recommendation
[Option, and why.]

## Approval
**Tolerances:** PM [days, £] · Sponsor [days, £] · Steering group beyond.
**Already used by earlier changes:** [days, £]
**Approver:** [option B: who] · [option C: who], because [impact at the upper end against the tolerance].

| Approver | Decision | Date | Conditions |
|----------|----------|------|------------|

## Change log entry
| ID | Raised | Title | Raised by | Impact | Approver | Decision | Decided on |
|----|--------|-------|-----------|--------|----------|----------|------------|
````

## Example

Input:

```
Marlow Retail want click and collect added to the new web shop before launch. raised by Jess
Okafor (their ecommerce lead) mon 9 nov 2026. dev says 12 to 18 days plus 5 days testing,
£600/day. same devs as checkout so launch (mon 1 mar 2027) moves 2 to 3 weeks.
tolerances: me 5 days / £5k, sponsor Raj Mehta 10 days / £15k, steering group beyond.
no other changes approved so far.
```

Output (excerpt):

```markdown
## Impact of the change as requested
| Area | Impact | Basis and confidence |
|------|--------|----------------------|
| Schedule | Launch moves 10 to 15 working days, from Mon 1 Mar 2027 to between Mon 15 Mar and Mon 22 Mar 2027 | Same developers as checkout, which is on the critical path |
| Cost | One-off £10,200 to £13,800. Running: [TBC] | 17 to 23 days at £600/day, development estimate plus 5 days testing |
| Benefits | [TBC] | Jess Okafor to state the expected benefit |

## Options
| Option | Scope | Time | Cost | Risk |
|--------|-------|------|------|------|
| A. Do nothing | No click and collect | None | None | Benefit [TBC] is lost |
| B. As requested | Click and collect at launch | +10 to 15 working days | £10,200 to £13,800 | Checkout work squeezed |
| C. Release after launch | Click and collect in a later release, date [TBC] | Launch holds Mon 1 Mar 2027 | £10,200 to £13,800 | Delays other post-launch work [TBC] |

## Recommendation
C, unless Marlow needs click and collect on launch day for a reason not yet given. It delivers the feature without moving the launch.

## Approval
**Approver:** option B needs the steering group, because the upper end of the delay (15 working days) is beyond Raj Mehta's 10-day tolerance. Option C has no launch impact and its cost is within £15,000, so Raj Mehta can approve it.
```

## Checks before you hand it over

- "Do nothing" is an option, with its real consequence.
- Every impact is a number or a range, or [TBC] with who will estimate it.
- The approver is justified against the tolerances at the upper end of the range, including tolerance already used.
- There is a change log line ready to paste.
- No estimate, rate, name or date appears that the user did not give or that can't be worked out from what they gave.
