---
name: competitor-teardown
description: Tear down competitors' positioning, pricing, features and onboarding, with every claim sourced. Use when the user asks for a competitor analysis, a competitive teardown or landscape, a comparison with a named competitor, "what is X doing", pricing benchmarks or input for a sales battlecard, or wants to know what to copy, ignore or counter.
argument-hint: "[competitor names, your product, and the decision this is for]"
---

# Competitor teardown

A teardown tells the team what to copy, what to ignore and where to fight back. A good one is specific about each competitor's buyer, message, price and first-run experience, and every fact carries a source and a date, because pricing pages and feature lists change every few months.

The usual failure is writing from memory. It produces confident facts that were true a year ago, and a team that prices or positions against a competitor that has since moved. The second is a feature checklist full of ticks that says nothing about why customers choose one product over another.

## Input

Competitor names, the user's product and segment, the decision this serves, and anything the user already has: win/loss notes, sales call notes, screenshots, trial notes. Look for an existing competitor file in the project with Glob first (for example `**/*competitor*`) and update it. Keep earlier entries under "Recent moves" with their dates rather than overwriting them.

## Ask first when the input is thin

In one message, at most:

1. Which competitors? Two to five, including the indirect option (a spreadsheet, an agency, doing nothing) if that's what customers really compare you with.
2. What decision is this for: pricing, positioning, the roadmap, a sales battlecard?
3. Which segment are you competing for?
4. What do you already have: win/loss notes, call notes, screenshots, trial accounts?
5. A quick scan (one page) or a full teardown including sign-up and first run?

If the user says "just do it", work from public sources and their notes, and mark every gap [TBC].

## Rules

- **Research with WebSearch and WebFetch when they are available.** Primary sources first: the competitor's pricing page, homepage, product docs, changelog or release notes, help centre, app store listing and job ads (a signal of where they're investing). Then secondary sources: review sites, press, analyst notes, community forums.
- **Cite every claim.** Each fact gets a source number such as [S3]. The source list gives the URL and the access date, for example "accessed Wed 28 Oct 2026". Note the date shown on the page when there is one.
- **Label how sure you are.** Verified: from the competitor's own page or docs, fetched for this teardown. Reported: from a third party, with its date. Unverified: from the user's notes, hearsay, or no source. Unverified items get checked before anyone puts them in a deck or says them on a sales call.
- **Never state competitor facts from memory as current.** If the web tools aren't available, say so at the top of the teardown. Use only what the user gave you, labelled with that source, and turn every other cell into a research task: "[TBC: check pricing page]". If you mention something you recall, label it "Unverified, from memory, may be out of date" and add it to the list to check. Never show a URL with an access date for a page you didn't fetch.
- **Positioning and message:** their homepage headline (quoted briefly), who they say it's for, the category they put themselves in, and the proof they lead with (customer logos, numbers, awards).
- **Pricing and packaging:** list prices with currency and billing period (monthly or annual), the value metric (per seat, per usage, flat fee), tier names and what each includes, free plan or trial limits, and whether a card is needed to start. Record "Contact sales" as that. Never estimate a hidden price.
- **Onboarding and first run:** steps from sign-up to the first moment of value, how long that takes, what data the user must bring, empty states, and the emails in the first seven days. You don't create accounts. Ask the user to sign up and share screenshots or notes, or use public onboarding docs and videos.
- **Strengths and weaknesses from the buyer's side,** with evidence. If you read reviews, count them: "11 of 40 reviews from the last 12 months mention slow support". Don't count reviews you haven't read.
- **Recent moves cover the last 6 to 12 months, each with a date.** Launches, pricing changes, funding, acquisitions, senior hires, new segments.
- **The comparison table covers what drives the buying decision** for the segment, not every feature. Use Yes, Partial, No or Unknown. No ticks.
- **Implications are the point.** Copy: table stakes that buyers expect and we lack. Ignore: things they do that our segment doesn't value. Counter: where we can win, with a specific move. Tie each one to evidence.
- **Stay fair and legal.** Public information, the user's own trial accounts, and what customers tell you freely. No posing as a customer to get sales material, no confidential documents, no scraping behind a login.
- **Date the teardown and set a refresh.** Every quarter for direct competitors, every six months for the rest.

## Output

````markdown
# Competitor teardown: [market or segment]

**For decision:** [decision] · **Date:** [date] · **Next refresh:** [date]
**Web research:** [done, sources below / not available, facts limited to the user's notes]

## [Competitor name]
**Positioning:** [headline, who it's for, category, main proof] [S#]
**Target segment:** [segment] [S#]

**Pricing and packaging**
| Tier | Price | Billing | Value metric | Key limits | Source and label |
|------|-------|---------|--------------|------------|------------------|
| [tier] | [price, currency] | Monthly / Annual | [per seat, usage, flat] | [limits] | [S#], Verified / Reported / Unverified |

**Key features:** [only those that matter to the buying decision] [S#]
**Onboarding and first run:** [steps to first value, time, card needed, data needed] [S#]
**Strengths:** [with evidence]
**Weaknesses:** [with evidence]
**Recent moves:** [date: move] [S#]

## Comparison
| What buyers care about | Us | [Competitor A] | [Competitor B] |
|------------------------|----|----------------|----------------|
| [criterion] | Yes / Partial / No / Unknown | | |

## Implications
**Copy:** [table stakes we lack, and the evidence]
**Ignore:** [what they do that our segment doesn't value, and the evidence]
**Counter:** [specific move, and the evidence]

## To verify
- [Claim] (check: [where], owner: [name])

## Sources
- [S1] [Page title], [URL], accessed [date]
````

After the teardown, offer once: "Want me to turn the Counter points into talking points for sales, or score them against the backlog?"

## Example

Input:

```
teardown of Quillmark for sales, we keep losing small agencies to them. sales say they're cheaper. we're Pennant, €12 per user per month.
```

Output (excerpt, with web research available):

```markdown
## Quillmark
**Pricing and packaging**
| Tier | Price | Billing | Value metric | Key limits | Source and label |
|------|-------|---------|--------------|------------|------------------|
| Starter | €8 per user per month | Annual | Per seat | Up to 5 users | [S1], Verified |
| Team | €14 per user per month | Annual | Per seat | Recurring invoices on this tier only | [S1], Verified |

**Sales says they're cheaper:** true for teams of up to five on annual billing [S1]. Monthly prices [TBC: not shown on the pricing page].
**Recent moves:** [TBC: changelog not checked yet]

## Implications
**Counter:** an agency with six or more users pays €14 per user with Quillmark against our €12 [S1]. Give sales a price comparison for 6 to 30 seats.

## Sources
- [S1] Quillmark pricing, https://quillmark.example/pricing, accessed Wed 28 Oct 2026
```

## Checks before you hand it over

- Every competitor fact has a source number and a label: Verified, Reported or Unverified.
- Nothing is stated from memory as current. If the web wasn't available, the teardown says so at the top.
- Every source has a URL and an access date, and only pages actually fetched are listed.
- The comparison table covers buying criteria and uses Yes, Partial, No or Unknown.
- Each Copy, Ignore and Counter item points to evidence.
- There is a "To verify" list for everything Unverified.
