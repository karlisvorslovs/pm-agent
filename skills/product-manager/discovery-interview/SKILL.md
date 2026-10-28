---
name: discovery-interview
description: Write a customer discovery interview guide with screener, script, probes and synthesis template. Use when the user plans customer or user interviews, asks "what should I ask customers", needs a research or discovery script, a screener or recruiting criteria, wants to validate a problem before building, mentions the Mom Test, or pastes interview notes to synthesise.
argument-hint: "[what you want to learn and who you want to talk to, or paste interview notes]"
---

# Discovery interview guide

A discovery interview finds out what people actually did, what it cost them and what they already tried, so the team can decide what to build. A good guide serves one decision, asks about specific past events, and keeps the interviewer listening for most of the call.

The usual failure is pitching the idea and asking "would you use this?". People are kind to your face, so you collect compliments and promises about the future, and neither predicts what they will do.

## Input

What the user wants to learn, the product or idea, who they want to talk to, and any research already done. Look for earlier research notes, interview syntheses or personas in the project with Glob first, so the guide doesn't ask what is already known. If the user pastes interview notes, go straight to synthesis.

## Ask first when the input is thin

In one message, at most:

1. What decision will these interviews inform? (For example: build X or not, which segment to start with.)
2. Who do you want to talk to? Describe them by what they do, not who they are: "ran payroll in the last month", not "HR people".
3. What do you believe today that could be wrong?
4. How many interviews, and where will people come from: your customers, churned users, a panel, your network?
5. Is this about understanding the problem, or testing a prototype or concept?

If the user says "just draft it", write the guide with [TBC] for the segment and hypotheses, and list your assumptions.

## Rules

- **One research goal, written as a decision.** "Decide by Fri 27 Nov 2026 whether to build automated payment chasing for agencies with 5 to 30 staff." A goal with no decision behind it produces interesting notes and no action.
- **Three to five hypotheses, each one falsifiable.** Write "We believe [x]. We're wrong if [observable thing]." For example: "We're wrong if fewer than half of the agencies we speak to chased a late invoice in the last month."
- **The screener asks about behaviour and hides the right answer.** Five to eight questions. Use multiple choice with ranges ("In the last 30 days, how many times did you...?"), not yes/no questions that signal what you want to hear. Exclude employees and their families, people who work for competitors, market research and UX professionals, and anyone you interviewed in the last six months. Set quotas per segment.
- **Plan six to eight interviews per segment.** Stop a segment early when two interviews in a row add nothing new. Fewer than five in a segment is a set of anecdotes, and the synthesis should say so.
- **30 to 45 minutes, two people.** One asks, one takes notes. Ask for consent to record at the start. Incentives depend on the audience and the budget: [TBC] unless the user says.
- **Follow the Mom Test's three rules.**
  1. Talk about their life, not your idea. Don't describe the solution until the last five minutes, if at all.
  2. Ask about specific past events, not generalities or the future. "Tell me about the last time..." beats "Do you usually...?" and "Would you...?".
  3. Talk less and listen more. If you talk for more than about a fifth of the call, you are pitching.
- **Ban these questions:** "Would you use...?", "How much would you pay for...?", "Do you think it's a good idea?", leading questions ("Isn't it frustrating when...?"), and two questions in one.
- **Look for what the problem costs them.** Time, money, workarounds, tools they pay for, people they hired. A problem nobody has tried to solve is usually not painful enough to buy a solution for.
- **Probes keep it concrete.** "What happened next?", "Can you show me?", "What did you do about it?", "How often does that happen?", "What did that cost you?", "Why was that?". After an answer, wait five seconds before the next question. People fill silence with the useful part.
- **Notes separate what happened from what you think it means.** Quote only exact words, in quotation marks, with the participant ID.
- **Debrief within 24 hours of each interview, and synthesise across all of them at the end.** Count how many participants showed each pattern ("5 of 8"). Count someone only when their notes say it. If a topic never came up with a participant, they are "not asked", not a "no", so a pattern's count can never be higher than the number of people the notes cover on that topic. What people did is stronger evidence than what they say they will do. Compliments and "I'd pay for that" are not evidence of demand. Mark each hypothesis Supported, Weakened or No evidence.
- **Rate the evidence.** One or two participants: anecdote. Most participants in a segment of five or more: a pattern, still self-reported. Behavioural data or an experiment is stronger than either, so say what would confirm the pattern.
- **Never invent quotes, participants or findings.** The synthesis template stays empty until the user gives you notes.

## Output

````markdown
# Discovery interviews: [topic]

## Plan
**Decision this informs:** [decision, by date]
**Hypotheses:**
1. We believe [x]. We're wrong if [y].

**Participants:** [segments, how many each] · **Recruiting from:** [source] · **Incentive:** [TBC]
**Interviewers:** [who asks, who takes notes]

## Screener
1. [Behaviour question with ranges] (Continue if: [answer]. End if: [answer].)

**Exclude:** [groups] · **Quotas:** [segment: number]

## Script (45 minutes)
**Intro and consent (3 min):** [why we're talking, no right answers, permission to record]
**Warm-up (5 min):** [their role, team, a typical week]
**The last time (20 min):**
1. Tell me about the last time you [behaviour]. What happened?

**Workarounds and costs (10 min):** [what they tried, tools, money, time]
**Wrap-up (5 min):** Is there anything I should have asked? Who else should I talk to?

## Probes
- [Probe]

## Notes template (one per interview)
**Participant:** [ID, segment] · **Date:** [date] · **Interviewer / note-taker:** [names]

| What happened (facts, their words) | What it might mean (our reading) |
|------------------------------------|----------------------------------|
| | |

**Exact quotes:** "[quote]" ([ID])
**Workarounds and costs:**
**Surprises:**

## Synthesis template
| Pattern | Participants (n of N) | Segments | Supporting quotes (ID) | Evidence strength |
|---------|-----------------------|----------|------------------------|-------------------|
| | | | | |

**Hypotheses:** [number: Supported / Weakened / No evidence, and why]
**Counter-examples:** [participants who didn't fit]
**What we'll do:** [the decision and the next step]
````

After the guide, offer once: "Paste your notes after each interview and I'll fill in the synthesis."

## Example

Input:

```
want to find out if small agencies (5-30 people) struggle with late client payments before we build auto payment chasing into Pennant. 8 interviews in the next two weeks, from trial users who didn't convert plus a few from linkedin.
```

Output (excerpt):

```markdown
**Decision this informs:** whether to build automated payment chasing for agencies with 5 to 30 staff. Decide by [TBC].
**Hypotheses:**
1. We believe chasing late payments is a monthly task at these agencies. We're wrong if fewer than half of them chased a late invoice in the last month.

## Screener
1. How many client invoices did your agency send in the last 30 days? (0 / 1 to 10 / 11 to 50 / more than 50) End if 0.
2. In the last 3 months, how many invoices were paid after the due date? (None / 1 to 2 / 3 to 5 / more than 5) Record the answer but don't screen on it. People with no late payments test the hypothesis too.

**The last time (20 min):**
1. Tell me about the last invoice that was paid late. When did you notice?
2. What did you do then? And after that?
3. How long did it take, from noticing to getting paid?
4. What have you tried to make this happen less? What did that cost?

Not asked: "Would you use automatic reminders?" It asks for a promise about the future, and people say yes to be polite.
```

## Checks before you hand it over

- The research goal is a decision, and every hypothesis says what would prove it wrong.
- Screener questions ask about recent behaviour with ranges, and list who to exclude.
- No question asks about future behaviour, willingness to pay or opinions of the idea.
- The idea is not described before the wrap-up.
- No finding, quote or participant appears that the user didn't give you.
- Every phrase in quotation marks matches the notes word for word. A shortened or reworded phrase loses its quotation marks.
