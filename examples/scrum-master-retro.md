# Planning a retro after a missed Sprint Goal

A tired team, a production incident and two new joiners. The skill picks a Timeline retro and says why, follows up last retro's actions, and gives a timed plan for a remote session with at most three owned actions.

- **Role:** Scrum master (`/role scrum-master`)
- **Skill:** `/retro`
- **Run:** Claude Code 2.1.310, 28 Oct 2026. Names and companies are invented.

## Prompt

```text
/retro Plan the retro for Thu 5 Nov 2026. 90 minutes, remote on Teams and Miro, 6 developers plus the PO. Sprint 14 missed its goal because a production incident ate three days. Two people are new to the team. The last three retros were Start / Stop / Continue and people are bored of it. Last retro's actions: "add alerting for queue backlog" (done) and "pair on code reviews" (not done).
```

## Output

# Retrospective plan, Sprint 14, Thu 5 Nov 2026

**Format:** Timeline, because a production incident took three days of Sprint 14, and the team needs to agree on what happened before anyone looks for causes. Two people are new and missed the earlier history, so the timeline also brings them up to speed. It also breaks the run of three Start / Stop / Continue retros.

**Timebox:** 90 min, with a 5-minute break · **Where:** Teams call, Miro board [link TBC] · **Facilitator:** [TBC]
**Attendees:** 6 Developers and the Product Owner

## Before the retro
- [ ] Pull the Sprint 14 data and put it on the board: Sprint Goal (missed), items forecast against items completed [TBC], carry-over into Sprint 15 [TBC], the incident's start and end dates [TBC], and how many people worked on it.
- [ ] Find out whether the incident has its own post-incident review. If it does, link it and keep the technical root cause there. This retro is about how the sprint and the team handled it. If it doesn't, flag that to the team as a gap.
- [ ] Prepare the Miro board:
  - Frame 1: Sprint 14 timeline, one column per day, with a mood band underneath (+2 to -2)
  - Frame 2: Last retro's actions
  - Frame 3: Three empty areas for breakout clusters
  - Frame 4: Action table (action, owner, start date, how we'll know it worked)
- [ ] Turn on anonymous voting in Miro for the safety check and the dot vote.
- [ ] Put the board link in the Teams invite. Ask everyone to open it and test it before the call.
- [ ] Have a quick word with the two new people before the retro. Explain the format, and tell them their fresh view of the incident is useful.

## Running order
| Time | Phase | Activity |
|------|-------|----------|
| 0:00 to 0:10 | Set the stage | **Check-in (3 min):** each person gives one word for Sprint 14. Everyone speaks. **Anonymous safety check (2 min):** 1 to 5 in Miro. If the average is 3 or below, cards stay anonymous. **Last retro's actions (5 min):** see the table below. |
| 0:10 to 0:35 | Gather data | **Facts (3 min):** the facilitator talks through the sprint data. **Silent writing (7 min, visible timer):** everyone adds events to the timeline on the day they happened, including the days before and after the incident. **Mood line (3 min):** each person draws their own line across the sprint. **Walk the timeline (12 min):** go day by day. Ask questions to understand, and don't argue yet. The new people can ask "why did that happen?" at any point. |
| 0:35 to 0:40 | Break | Cameras off, 5 minutes |
| 0:40 to 1:00 | Generate insights | **Cluster and dot vote (5 min):** group the cards, then everyone gets 3 votes. **Breakouts (15 min):** two Teams breakout rooms, of 3 and 4 people, with one new person in each. Each room takes one of the top two clusters and runs 5 whys, or asks "what would have to be true for this to happen again?" |
| 1:00 to 1:20 | Decide what to do | **Report back (6 min):** 3 minutes per room, covering the cause they found, not a solution. **Propose and choose (14 min):** each room suggests one or two actions, then everyone dot votes. Keep one to three. Each one gets a single owner, a start date and a measure. |
| 1:20 to 1:30 | Close | Read the actions back. Agree which ones go into the Sprint 15 backlog, and log anything the team can't fix as an impediment. Finish with a return-on-time-invested vote (1 to 5) and one sentence on whether the new format was better than Start / Stop / Continue. |

## Last retro's actions (for 0:05 to 0:10)
| Action | Done? | Question to ask |
|--------|-------|-----------------|
| Add alerting for queue backlog | Done | Did it fire during the incident? Did it help, or was this a different kind of failure? |
| Pair on code reviews | Not done | Why not? No owner, no time, or not wanted? Then decide: keep it smaller with one owner, or drop it. Now that two people are new, pairing may be worth more than it was last sprint. |

If the pairing action comes back unfinished a second time, drop it, or make the reason it keeps slipping the main topic of the next retro.

## Facilitator notes
- **Keep it blameless.** The incident will come up most. Ask "what made this hard?" rather than "who missed this?"
- **The PO is there for a reason.** The missed Sprint Goal is the PO's concern too. A good question for insights: "When the incident hit, did we talk about changing the Sprint Goal or the scope? Who decides that?" Don't treat it as the answer. Only use it if the team's cards point that way.
- **Beware of too many actions.** An incident retro tends to produce a long list of technical fixes. Send fixes for the incident itself to the post-incident review or the Product Backlog. Keep retro actions about how the team works.
- **An example of a well-formed action** (for format only, not a suggestion): "[Owner] sets up a rotating incident lead from Mon 9 Nov. Measure: in the next incident, no more than two people are pulled off sprint work."

## Gaps to fill
- Facilitator name and Miro board link
- Sprint 14 numbers: forecast against completed, carry-over, incident dates
- Whether a post-incident review exists
- Anything sensitive about the incident, for example whether one person carried most of it

No retro notes or sprint data were in the project folder, so everything above is based on your message. If this retro also feels flat, try a retro of retros next time. To do that, someone needs to start writing down actions and their outcomes now.
