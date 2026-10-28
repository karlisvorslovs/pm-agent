---
name: working-agreements
description: Facilitate and write team working agreements as specific behaviours the team consents to. Use when the user asks for working agreements, team norms, ground rules, the "how we work" part of a team charter, or says the team keeps clashing over meetings, response times, code reviews or remote work.
argument-hint: "[team and what's causing friction, or paste notes from the session]"
---

# Working agreements

A working agreement is a short list of behaviours a team chooses so that people know what to expect from each other. A good one has 5 to 10 lines, each starting with "We", each specific enough that you could say whether it happened yesterday. The team writes it, checks it for consent and reviews it on a set date.

It usually goes wrong in one of three ways. The list is values ("We respect each other") that nobody disagrees with and nobody can act on. Or a manager writes the rules and hands them over, and people follow them only when watched. Or the agreement is never revisited and quietly dies on a wiki page.

## Input

Notes or stickies from a session, a list of values, a description of the friction ("reviews take days", "nobody answers in Slack"), or an existing agreement to refresh. Look for one with Glob (`**/*agreement*`, `**/*charter*`, `**/*norms*`) and update it rather than start again.

## Ask first when the input is thin

Ask in one message, at most:

1. Who is in the team (size, roles), and how do they work: co-located, remote, hybrid, which time zones?
2. What prompted this: a new team, new joiners, friction, a change of setup?
3. Where does the friction show up? One or two recent examples help more than a list of values.
4. Is there an existing agreement, and how is it working?
5. Are you running a session with the team, or do you want a draft to take to them?

If the user says "just draft it", write a draft headed "Proposal for the team to change". Put suggested numbers in square brackets, such as "within [4] working hours", and list your assumptions. A draft written without the team starts a conversation. It is never the agreement.

## Running the session

Default 60 minutes for 4 to 10 people:

| Minutes | Step | How |
|---|---|---|
| 5 | Open | Why we're here, that the agreement is ours to change, the review date, one vague and one specific example |
| 12 | Generate | 1-2-4-All on "What could we do for each other that would make work easier?" One idea per sticky |
| 8 | Cluster | Group stickies by area (see the prompts below) and name each group |
| 15 | Make specific | One or two "We ..." lines per group, tested against the three questions below |
| 10 | Consent | Read each line aloud, fist of five, amend until nobody is below 3 |
| 5 | Close | Where it lives, the review date, who brings it to the review |
| 5 | Buffer | You will need it at the consent step |

**Remote:** a board prepared with the areas as columns, breakout rooms for the pairs and fours, and consent by fingers on camera or a poll. **Hybrid:** everyone joins from their own laptop, so remote people are not watching a room.

## Prompts by area

Use the areas where the friction is. Skip the rest.

- **Communication and availability.** Which channel for what? How fast do we answer a direct message, a mention, an urgent request? What counts as urgent, and how do we signal it? What are our core hours?
- **Meetings.** Which meetings do we need? Do we start on time? Is there an agenda in advance? Cameras on or optional? How does someone decline?
- **Decisions.** Which decisions does the team make, and which belong to someone else? How do we decide when we disagree? Where do we write decisions down?
- **Code review and quality.** How fast do we pick up a review? How big can a pull request be? What does "done" include? Who can merge?
- **Remote and hybrid.** Which days are office days? Where do hallway decisions get written down so remote people see them?
- **Handling conflict.** How do we raise a disagreement: with the person first, then the retro? How do we disagree in public channels?
- **Focus time.** Which hours are protected? How do we signal "don't disturb", and what is allowed to interrupt?

## From vague to specific

A line is specific enough when you can answer yes to three questions. Could you observe whether it happened yesterday? Would a new joiner know what to do on day one? Does it have a number, a time, a channel or a trigger where one matters?

| Vague value | Specific behaviour |
|---|---|
| Respect each other's time | We start meetings at the booked time and finish 5 minutes early. If we'll be more than 5 minutes late, we say so in the team channel. |
| Be responsive | We answer direct messages within 4 working hours. If it can't wait, we call. |
| Quality matters | We pick up a review within one working day. A pull request over 400 changed lines gets a heads-up in the channel first. |
| Open communication | We raise a disagreement with the person first. If that doesn't settle it within a week, we bring it to the retro. |
| Protect focus | We keep Tuesday and Thursday afternoons free of meetings. |
| Include remote people | Decisions made in the office get written in the team channel the same day. |

## Rules

- **5 to 10 lines.** More than 10 and nobody remembers them. Start where the friction is now.
- **Every line starts with "We".** It applies to everyone in the team, including the lead or manager if they work in it. "Developers will ..." means someone else is writing rules for them.
- **Behaviours, not traits.** "Be proactive" can't be observed. "We flag a blocker in stand-up the day we hit it" can.
- **Consent, not consensus.** Consent means "I can live with this and will support it", not "this is my favourite". Fist of five: 5 love it, 4 good, 3 can live with it, 2 want to discuss, 1 serious concern, 0 block. Anything below 3 gets heard and the wording changes. Nobody is outvoted.
- **Don't force a split.** If the team can't reach consent on a line (cameras is the classic), record it as open, with the options, and try one for two weeks if the team agrees to.
- **Review on a date.** First review 4 to 6 weeks after writing it, in a retro. Then every quarter, and whenever someone joins or leaves. For each line: keep, change or drop.
- **Make it visible.** Pin it in the team channel and on the wiki. Read it through with every new joiner in their first week.

## When an agreement is broken

- **Anyone can point to it, kindly and at the time.** "We said reviews within a day, and this one's waited since Tuesday." That is what the agreement is for. It is not a complaint to the manager.
- **Once is a reminder. A pattern is information.** If the same line keeps getting broken, take it to the retro and ask what makes it hard to keep. Usually the system is in the way: too much work in progress, a meeting clash, a time zone. Change the system or change the line.
- **No policing.** No tallies, no naming and shaming, no penalties. The facilitator is not the enforcer.
- **If one person keeps breaking one line**, that is a private, curious conversation about what makes it hard, not a new team rule.

## Output

````markdown
# [Team] working agreement

**Status:** [Proposal for the team to change / Agreed by consent on [date]]
**Agreed by:** [names or number present] · **Next review:** [date], at [retro or event]

## [Area, e.g. Communication]
1. We [specific behaviour].

## [Area]
2. We [specific behaviour].

## Still open
- [Topic without consent]: options are [A] or [B]. [Trial, if any, and when we decide.]

## When we break an agreement
- Anyone can remind us, kindly and at the time.
- If a line keeps getting broken, we bring it to the retro and change the line or what makes it hard to keep.

## Changing this agreement
Anyone can propose a change at any retro. A change needs consent from the people present.
````

## Example

Input:

```
team kestrel, 8 people, lisbon + warsaw (warsaw 1h ahead). session wed 4 nov.
stickies: respect each other's time, be responsive, quality, reviews take ~3 days, camera on??
agreed in the room: standup 10:00 lisbon / 11:00 warsaw. reviews within 1 working day.
no meetings on fridays. cameras: no agreement, 2 people strongly against
```

Output (excerpt):

```markdown
# Kestrel working agreement

**Status:** Agreed by consent on Wed 4 Nov 2026, except where marked
**Agreed by:** [TBC] of 8 · **Next review:** Wed 2 Dec 2026, at the retro

## Meetings
1. We hold stand-up at 10:00 Lisbon, 11:00 Warsaw.
2. We don't book team meetings on Fridays.

## Code review
3. We pick up a review within one working day of being asked.

## Communication (proposal, not yet agreed)
4. We answer direct messages within [4] working hours.

## Still open
- Cameras in remote meetings: options are "on by default" or "optional, on when presenting". Proposed: decide at the review on Wed 2 Dec 2026.
```

## Checks before you hand it over

- Every line starts with "We" and passes the three questions. No line is a bare value.
- Nothing the team didn't agree is shown as agreed. Suggestions are in square brackets or marked as proposals.
- Topics without consent are listed as open, not settled by you.
- There is a review date with the correct weekday, and a section on what happens when a line is broken.
- 5 to 10 lines, unless the user's notes clearly agreed more.
