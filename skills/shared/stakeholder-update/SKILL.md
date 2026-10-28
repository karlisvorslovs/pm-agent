---
name: stakeholder-update
description: Write an email, Slack message or exec update for a stakeholder, with the point and the ask up front. Use when the user says "write an update for", "email the sponsor", "tell the client", "how do I tell them", "draft a message to leadership", needs to deliver bad news, or wants a weekly update turned into something a busy person will read.
argument-hint: "[who it's for, and what happened]"
---

# Stakeholder update

A busy stakeholder reads the subject line, the first two sentences, and whatever is in bold. Everything else is for the record. So the update has to work in those three places: what's happening, what it means for them, and what you need from them by when.

The usual failures are burying bad news in paragraph three, sending an update with no ask so nothing happens, and writing for yourself instead of the reader. An executive does not need the story of the sprint. A developer does not need the board-level framing.

## Input

What happened (notes, a status report, a thread), who the update is for, and what the user needs from them. If there is a status report, RAID log or meeting notes in the project, read them first.

## Ask first when the input is thin

Ask in one message, at most:

1. Who is it for, and how well do they know the project?
2. What is the one thing they need to know?
3. What do you need from them, and by when? (A decision, approval, budget, a person, or nothing.)
4. Email, Slack or Teams, or something for a meeting?
5. Is there anything sensitive, such as bad news they have not heard yet, or a relationship to be careful with?

If the user says "just write it", draft it and mark the gaps as [TBC].

## Rules

- **Bottom line up front.** The first sentence says the status or the news. The second says what it means for the reader.
- **One ask, stated plainly, with a date.** "Can you approve the extra £18,000 by Fri 13 Nov?" If there is no ask, say "No action needed" so they can stop reading.
- **Bad news goes first, never in the middle.** Say what happened, the impact, what you are doing about it, and what you need. Do not soften it into something they will misread as fine.
- **Write for this reader.** Executives get outcomes, money, dates and risk in under 150 words. Teams get detail and next steps. Clients get what changes for them, never internal blame.
- **Length limits.** Slack or Teams: under 120 words. Email: under 250 words. Exec summary: under 150 words. If it needs more, attach or link the detail.
- **Subject lines carry the status.** "Atlas: amber, decision needed on launch date by 13 Nov" beats "Atlas update".
- **No filler.** Cut "just checking in", "I hope this finds you well", "as you may know", and any sentence that would not be missed.
- **Use the active role's frame.** A project manager reports RAG against the baseline. A product manager reports outcomes and metrics. A scrum master reports the Sprint Goal and the Increment. An agile coach reports what changed in how teams work and what they need from leaders.

## Output

Give the main version, then a short version for the other channel.

````markdown
**Subject:** [Project]: [status or news], [ask and date, if any]

[Name],

[Sentence 1: the news or the status.] [Sentence 2: what it means for them.]

**What I need from you:** [the ask, with a date]. / No action needed.

**Detail**
- [Fact, with numbers and dates]
- [What we are doing about it]
- [What happens next, and when they will hear from us]

[Sign-off]

---
**Slack version:**
> [Under 60 words. News, impact, ask.]
````

When the news is bad, also give the user one line on how to deliver it: whether it should be a call before the email, and who else should hear first.

## Example

Input: "need to tell Dana (sponsor) that the data migration slipped 2 weeks because the vendor's export tool kept failing. new go-live 30 Nov instead of 16 Nov. we can claw back 1 week if we pay vendor £6k for weekend support. need yes/no by fri 6 nov"

Output:

```markdown
**Subject:** CRM migration: go-live moves to 30 Nov unless we approve £6k weekend support by Fri 6 Nov

Dana,

The CRM data migration is two weeks late. Go-live moves from Mon 16 Nov to Mon 30 Nov 2026 unless we pay for extra vendor support.

**What I need from you:** a yes or no on £6,000 of weekend vendor support by Fri 6 Nov. With it, go-live is Mon 23 Nov.

**Detail**
- Cause: the vendor's export tool failed on three of five test runs. They have fixed it, and the last two runs passed.
- Option A, approve £6,000: go-live Mon 23 Nov, one week late.
- Option B, no extra spend: go-live Mon 30 Nov, two weeks late.
- My recommendation: [TBC, A or B, with the reason].
- I will confirm the final date the day after your decision.

Thanks,
[Name]

---
**Slack version:**
> Dana, CRM migration is 2 weeks late (vendor export tool). £6k of weekend vendor support gets go-live to 23 Nov instead of 30 Nov. Need a yes or no by Fri 6 Nov. Details by email.
```

Delivery note: Dana is hearing about a slip and a cost together, so a two-minute call before the email avoids a surprise.

## Checks before you hand it over

- The first two sentences make sense on their own.
- There is exactly one ask with a date, or "No action needed".
- Every number and date comes from the user's input or is marked [TBC].
- It is within the length limit for its channel.
- Bad news is in the first sentence, not softened or buried.
