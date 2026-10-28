# Team health check read-out

Raw votes and a few comments from a seven-person team. The skill groups the results into themes in the team's own words, keeps a named colleague out of the quotes, proposes experiments with review dates for the team to choose from, and keeps the results inside the team unless the team agrees otherwise.

- **Role:** Agile coach (`/role agile-coach`)
- **Skill:** `/team-health-check` (picked automatically)
- **Run:** Claude Code 2.1.310, 28 Oct 2026. Names and companies are invented.

## Prompt

```text
Results from the Falcon team's health check on Tue 27 Oct 2026. 7 people voted green / amber / red. Trend is against the last check in July.
- Easy to release: 1 G, 2 A, 4 R (down). "Deploys need Kaspars and take a whole afternoon."
- Suitable process: 4 G, 3 A, 0 R (same)
- Tech quality: 2 G, 3 A, 2 R (down). "The payment module is scary to touch."
- Value: 6 G, 1 A, 0 R (up)
- Speed: 1 G, 4 A, 2 R (down). "We wait on the platform team for every environment change."
- Mission: 5 G, 2 A, 0 R (same)
- Fun: 3 G, 3 A, 1 R (down)
- Learning: 2 G, 2 A, 3 R (down). "No time to learn anything."
- Support: 4 G, 3 A, 0 R (same)
- Pawns or players: 5 G, 2 A, 0 R (same)
- Teamwork: 6 G, 1 A, 0 R (up)
Write the read-out I'll take to the team's retro on Thu 29 Oct.
```

## Output

# Falcon team health check, Tue 27 Oct 2026

**Participants:** 7 of [TBC] · **Format:** [TBC] · **Previous check:** July 2026 [exact date TBC]
**Who sees this:** The Falcon team only, until the team agrees in the retro what (if anything) goes further.

## Results

| Dimension | Summary | Votes G/A/R | Trend | In the team's words |
|---|---|---|---|---|
| Easy to release | **Red** | 1/2/4 | ↓ | "Deploys depend on one person and take a whole afternoon" |
| Speed | Amber | 1/4/2 | ↓ | "We wait on the platform team for every environment change" |
| Learning | **Split** | 2/2/3 | ↓ | "No time to learn anything" |
| Tech quality | **Split** | 2/3/2 | ↓ | "The payment module is scary to touch" |
| Fun | **Split** | 3/3/1 | ↓ | [TBC] |
| Suitable process | Green | 4/3/0 | → | [TBC] |
| Support | Green | 4/3/0 | → | [TBC] |
| Mission | Green | 5/2/0 | → | [TBC] |
| Pawns or players | Green | 5/2/0 | → | [TBC] |
| Value | Green | 6/1/0 | ↑ | [TBC] |
| Teamwork | Green | 6/1/0 | ↑ | [TBC] |

Five dimensions went down since July, all on how the work gets done, not on why we do it or how we work together. "Split" means no colour got 4 or more of the 7 votes.

## Themes

1. **Getting work out the door is slow and depends on others.** Easy to release (4 reds) and Speed are both down. Two bottlenecks come up: deploys depend on one person, and every environment change waits on the platform team. Neither of these is about effort. Both are about how the work is set up.
2. **No room to breathe.** Learning has the most reds after releasing, and Tech quality and Fun are also down. "No time to learn" and "the payment module is scary to touch" may be the same problem: nobody has the time to get to know the risky code well enough to stop it being risky. Worth asking the team if that's true.
3. **The core is strong.** Value and Teamwork both went up to 6 greens. Mission and Pawns or players are steady and green. The team knows what it is for, ships things that matter and works well together. Whatever is wrong, it isn't the people.

## What is going well

- **Value (↑, 6 green):** the team feels it is shipping things that matter. [TBC: what changed since July?]
- **Teamwork (↑, 6 green):** the team works as one. That makes it a good time to spread knowledge, like deploys or the payment module, across more people.

## Questions for the retro

Start with the reds, the splits and the downward trends. Spend no more than 8 minutes on each.

- **Releasing:** "What would need to be true for anyone here to run a deploy on their own?"
- **Platform team:** "Which environment changes do we wait on most, and how long is a typical wait?" Support is green, so help inside the team works. Is the platform team the exception?
- **Learning and tech quality:** "If you had a few protected hours, what would you learn first?" See whether the payment module comes up.
- **Fun:** there are no comments yet. Ask what changed since July.

## Candidate experiments (the team picks 1 to 3)

| # | We could try | Because | Owner | Start | Review on | It worked if |
|---|---|---|---|---|---|---|
| 1 | Every deploy is done by someone new, with the usual person as a pair. They write the steps down as they go | Deploys depend on one person | [owner?] | Mon 2 Nov 2026 | Thu 26 Nov 2026 | Two more people have each run a deploy, and we have a written runbook |
| 2 | Log every wait on the platform team for two weeks: what we asked for, when, and how long it took | Waiting on the platform team | [owner?] | Mon 2 Nov 2026 | Thu 19 Nov 2026 | We have a list with real wait times to take to the platform team |
| 3 | Two protected hours every other Friday for learning. The team chooses the topic, for example pairing on a small change in the payment module | No time to learn, scary code | [owner?] | Fri 6 Nov 2026 | Thu 26 Nov 2026 | Both sessions happened, and [TBC: a signal the team picks] |

These are options to start the conversation. If the team comes up with something better, use theirs.

## Summary to share outside the team (draft, only if the team agrees)

> The Falcon team is strong on value, mission and teamwork, and both value and teamwork improved since July. Releasing and speed got worse, mostly because deploys rely on a small number of people and environment changes depend on another team. The team also reports little time for learning. The team is trying [experiments] and will review them on [date]. Help needed: [TBC, e.g. a conversation with the platform team about environment changes].

**Next health check:** around Tue 26 Jan 2027 [TBC]

---

**Gaps to fill before Thursday:**
- Team size, format and the exact date of the July check.
- Comments for the dimensions marked [TBC], if you have any.
- Who outside the team expects to see results. The team should agree on this at the start of the retro.

**How I worded it:** the deploy comment named a colleague, so I rewrote it as "one person". That keeps the problem about the deploy setup rather than about them. I also read summary colours from the vote spread, and I flagged Learning, Tech quality and Fun as splits because none of them had a majority.
