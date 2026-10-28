---
name: standup
description: Facilitate or fix a Daily Scrum, or summarise one into blockers and follow-ups. Use when the user mentions the daily standup, the Daily Scrum, "our standup runs too long", "standup is just status reporting", "async standup", or pastes standup notes and asks what needs chasing.
argument-hint: "[describe the problem, or paste today's standup notes]"
---

# Daily Scrum

The Daily Scrum is a 15-minute event for the Developers to check progress toward the Sprint Goal and adjust the plan for the next working day. A good one ends with everyone knowing whether the goal is still on track, what gets finished next, and who is helping whom.

The usual failure is a round of status reports to the scrum master. Each person recites yesterday and today, nobody listens until it's their turn, and the Sprint Goal never comes up. The second most common is a 15-minute event that runs to 40 minutes because two people start solving a problem in front of everyone.

## Input

Two modes. Work out which one from the request.

- **Facilitate.** The user wants to run a Daily Scrum, or fix one that isn't working. They usually describe the team and what goes wrong.
- **Summarise.** The user pastes notes, a transcript or a Slack thread from today's Daily Scrum and wants blockers and follow-ups.

If a board export or an impediment log is in the project, find it with Glob (`**/*board*`, `**/*impediment*`) and read it first.

## Ask first when the input is thin

For facilitation, ask in one message, at most:

1. How many people come, are you in a room or remote, and how long does it run now?
2. What goes wrong: runs long, status reporting, nobody raises blockers, people skip it?
3. Does the team have a Sprint Goal this sprint, and can everyone see it?
4. What columns does your board have?

For a summary with no notes, ask for the notes, the date and the Sprint Goal. If the user says "just draft it", give the general facilitation plan below, marked as a starting point, with [TBC] for anything about their team.

## Rules

**It belongs to the Developers.** The scrum master makes sure it happens and stays inside 15 minutes, and does not need to run it. The Product Owner and scrum master take part as Developers only when they are working on Sprint Backlog items. Anyone else listens.

**Same time, same place, 15 minutes.** Start on time even if people are missing. Stop at 15 minutes even if you haven't finished.

**Start with the goal.** First question: "Are we still on track for the Sprint Goal? What is the biggest risk to it?" A fist-of-five confidence vote takes 10 seconds and tells you more than ten status updates.

**Walk the board right to left.** Start at the column nearest Done and ask of each item: "What does it take to finish this today?" Then move one column left. This puts finishing before starting, shows queues in review and testing, and keeps the talk on work, not on people. If items are waiting for review, nobody starts something new until they move.

**The three questions are optional.** The Scrum Guide 2020 dropped "yesterday, today, blockers". Use them only if they still help.

**Problems go to the after-party.** When a discussion needs more than about a minute, the facilitator says "after-party", writes down the topic and the people needed, and moves on. Only those people stay afterwards.

**Blockers get a name and an age.** First day: someone takes it, today. Raised again the next day: it goes on the impediment log. Older than two working days: escalate one level, so a team problem goes to the scrum master and a scrum master problem goes to the manager the team escalates to.

**Update the board before, not during.** If people update tickets while others talk, the Daily Scrum has become the board-updating meeting.

**Anti-patterns and fixes**

| You see | Why it hurts | Try |
|---------|--------------|-----|
| Everyone reports to the scrum master | Developers don't coordinate with each other | Scrum master stands at the back or skips one day a week; rotate the facilitator among the Developers; ask "who do you need today?" |
| Problem solving in the meeting | Runs to 30 minutes or more; most people are idle | After-party list; visible timer; facilitator calls time after one minute |
| People talk to the board, not each other | Ticket reading, no coordination | Walk the items closest to Done; ask "who can help finish this?"; stand facing each other with the board to one side |
| "Same as yesterday" | Stuck work stays hidden | Show how many days each item has been in progress; ask "what would make it move?" |
| A manager asks for updates | It turns into reporting upwards | Ask them to listen, and offer the board or a weekly update instead |
| Skipped "because we talk all day" | Nobody checks the goal | Keep it, even at 5 minutes |
| More than 10 people | Nobody can follow it | Check whether this is really one team |

**Async standup, for teams spread over three or more time zones.** Post in one thread by an agreed local time. Read the others before posting. Any "at risk" or blocker triggers a 15-minute call that day with only the people needed. Keep at least one live Daily Scrum a week. Rotate who posts a three-line roll-up by midday.

```markdown
**Daily Scrum, [date]** · Sprint Goal: [goal]
1. Toward the goal since my last update: [item IDs finished or moved]
2. Next: [what I'll finish, or help someone else finish]
3. Blocked or need help: [what, and @who] / none
4. Goal confidence: on track / at risk / off track
```

## Output

**Facilitation mode:** a short plan. Which anti-patterns you see in what they told you, the two or three fixes to try first, and a 15-minute running order: goal check (2 minutes), walk the board right to left (10 minutes), blockers and after-party list (3 minutes). Suggest trying it for one sprint and checking at the retrospective.

**Summary mode:**

````markdown
# Daily Scrum, [date] (day [n] of [n])

**Sprint Goal:** [goal]
**Status:** On track / At risk / Off track. [One line: why]

## Blockers

| # | Blocker | Item | Raised | Age (working days) | Owner | Next step |
|---|---------|------|--------|--------------------|-------|-----------|
| 1 | [What is stuck] | [ID] | [date] | [n] | [Name or owner?] | [Verb + what, by when] |

## Follow-ups

| # | Follow-up | Owner | By |
|---|-----------|-------|----|
| 1 | [After-party topic or action] | [Name or owner?] | [date] |

## Finish before starting
- [Items waiting for review or testing]

## Not toward the goal
- [Work mentioned that doesn't serve the Sprint Goal, and the question to ask about it]
````

Leave out "Not toward the goal" when there is nothing in it. Offer once: "Want me to add the blockers to the impediment log?"

## Example

Input:

```
thu 12 nov standup. sprint 9-20 nov, goal = customers can reschedule a delivery from the tracking page
- ola: reschedule form done, PR waiting since tue
- raj: slot API still 500 on staging, platform team said they'd look, raised monday
- kai: started the email template refresh
- 15 min on timezone handling, didn't finish
- ines: can't test end to end until the slot API works
```

Output (excerpt):

```markdown
# Daily Scrum, Thu 12 Nov 2026 (day 4 of 10)

**Sprint Goal:** Customers can reschedule a delivery from the tracking page.
**Status:** At risk. The slot API has blocked end-to-end testing for 3 working days.

## Blockers
| # | Blocker | Item | Raised | Age (working days) | Owner | Next step |
|---|---------|------|--------|--------------------|-------|-----------|
| 1 | Slot API returns 500 on staging (found by Raj) | [TBC] | Mon 9 Nov 2026 | 3 | Scrum master | Escalate to the platform team lead today; past the two-day rule |

## Follow-ups
| # | Follow-up | Owner | By |
|---|-----------|-------|----|
| 1 | Agree how to store time zones (after-party) | [owner?] | Fri 13 Nov 2026 |

## Finish before starting
- Ola's reschedule form PR has waited since Tue 10 Nov 2026. Needs a reviewer today: [owner?]

## Not toward the goal
- Kai started the email template refresh. Ask whether Kai can review Ola's PR first.
```

## Checks before you hand it over

- The Sprint Goal and its status come first.
- Every blocker has a raised date, an age in working days and one owner, or [owner?]. Anything past two working days is marked for escalation.
- Long discussions became follow-ups with the people needed, not minutes.
- No names, items or dates appear that aren't in the notes.
- In facilitation mode, every fix is tied to a problem the user described.
