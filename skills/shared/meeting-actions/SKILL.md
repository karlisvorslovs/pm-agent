---
name: meeting-actions
description: Turn meeting notes or a transcript into decisions, owned actions, open questions and a recap to send. Use when the user pastes notes, a transcript or a voice-memo dump and says "what are the actions", "summarise this meeting", "write up the minutes", "who owes what", or wants a follow-up message after a call.
argument-hint: "[paste notes or a transcript, or give a file path]"
---

# Meeting notes to actions

Most meeting notes record what was said. The useful version records what changes because of the meeting: what was decided, who does what by when, and what is still open. A good write-up takes two minutes to read and leaves nobody guessing whether something is theirs.

The usual failure is turning every sentence into an action. A one-hour meeting normally produces three to eight real actions. Everything else is discussion, and it belongs in a short summary or nowhere.

## Input

Notes, a transcript, chat logs or a file path. If the user gives a path, read the file. If they mention notes "in the project", look for them with Glob before asking.

## Ask first when the input is thin

If the notes are a few lines with no names or no clear outcomes, ask in one message, at most:

1. Who was in the meeting, and who is missing from these notes that should get the recap?
2. What date was the meeting? (Needed to turn "Friday" into a real date.)
3. What was the meeting for?
4. Anything agreed that isn't in the notes?

Do not ask when you have a transcript or detailed notes. Process them, then list the gaps at the end. If the user says "just do it", work with what you have and mark gaps as [TBC].

## Rules

- **An action has a verb, one owner, a due date and a "done when".** "Look into pricing" is not an action. "Dana: send two pricing options to the steering group by Thu 12 Nov, done when both have a cost and a margin" is.
- **One owner per action.** If the notes say "Ali and Ben will", ask who leads, or name the first person and flag it.
- **Never invent an owner or a date.** Missing owner: write [owner?] and list it under "Needs an owner". Missing date: write [date?].
- **Turn relative dates into real ones** using the meeting date: "Friday" in a meeting on Tue 3 Nov 2026 is Fri 6 Nov 2026. "Next Friday" is ambiguous, so say which date you assumed. If you don't know the meeting date, keep the user's words and add [date?].
- **A decision changes what people do.** "We discussed the vendor" is not a decision. "We go with Vendor B, contract signed by end of month" is. Record who made it when the notes say.
- **Open questions get a person to answer them.** A question with no owner stays open forever.
- **Transcripts are noisy.** Skip greetings, tangents and repeats. Quote someone only when their exact words are a commitment.
- **Match the active role.** A project manager wants new risks and issues called out for the RAID log. A scrum master wants impediments separated out. A product manager wants backlog items and research questions separated out.

## Output

````markdown
# [Meeting name], [date]

**Attendees:** [names] · **Missing / to inform:** [names]
**Purpose:** [one line]

## Decisions
1. [What was decided]. Decided by [who]. [Why, if the notes say.]

## Actions
| # | Action | Owner | Due | Done when |
|---|--------|-------|-----|-----------|
| 1 | [Verb + object] | [Name] | [date] | [observable result] |

## Open questions
- [Question] (answer from: [name], by [date])

## Needs an owner
- [Action or question with no owner yet]

## Parked
- [Topic raised but not handled, and where it goes next]

## Recap to send
> [Message under 120 words, ready for Slack or email. Decisions first, then actions with owners, then the next meeting.]
````

Leave out any section that would be empty, except Decisions and Actions. Write "None recorded" there, because "no decisions were made" is useful information.

After the write-up, offer once: "Want me to add the decisions to the decision log, or format the actions for Jira or a CSV?"

## Example

Input:

```
weekly sync tue 3 nov. me, priya, tom, sam (sam left early)
- checkout bug still live, tom says fix is ready, needs QA. priya to ask QA team for a slot this week
- agreed: we drop apple pay from the dec release, not enough time. revisit jan
- marketing want launch date, nobody knows. need someone to talk to them
- sam to send updated estimate for search friday
- tom thinks we need another backend dev, discuss with sarah?
```

Output (excerpt):

```markdown
# Weekly sync, Tue 3 Nov 2026

**Attendees:** [you], Priya, Tom, Sam (left early)
**Purpose:** Weekly delivery sync

## Decisions
1. Apple Pay is out of the December release. Revisit in January. Reason: not enough time.

## Actions
| # | Action | Owner | Due | Done when |
|---|--------|-------|-----|-----------|
| 1 | Book a QA slot for the checkout bug fix | Priya | Fri 6 Nov 2026 | QA has a date to test Tom's fix |
| 2 | Send the updated estimate for search | Sam | Fri 6 Nov 2026 | Estimate shared with the team |
| 3 | Give marketing a launch date or a date for the date | [owner?] | [date?] | Marketing has a written answer |

## Open questions
- Do we need another backend developer? (answer from: Sarah, by [date?])

## Needs an owner
- Action 3: talking to marketing about the launch date.
```

## Checks before you hand it over

- Every action has an owner and a date, or is listed under "Needs an owner".
- No name, date or number appears that isn't in the input.
- Decisions are things that change what people do, not topics.
- The recap is under 120 words and could be sent as it is.
