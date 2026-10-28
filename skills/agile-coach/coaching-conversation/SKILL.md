---
name: coaching-conversation
description: Plan a one-to-one coaching session with GROW questions, stance shifts and a follow-up note. Use when the user is preparing to coach a scrum master, product owner, manager or team member, asks "how do I approach this conversation", wants good coaching questions, or is planning a first session or a tricky follow-up.
argument-hint: "[who you're coaching and what they want help with]"
---

# Coaching conversation

A coaching conversation helps someone think through their own challenge and leave with a next step they chose. The coach mostly asks and listens. A good plan has a clear agreement about what the session is for, a handful of strong questions for each stage, and a plan for when to stop asking and offer something.

The usual failure is advice dressed as a question: "Have you thought about running a retro on it?" The second is coaching someone towards a goal that isn't theirs, usually because their manager asked for the session. Both feel like coaching to the coach and like being managed to the coachee.

## Input

Who the coachee is and their relationship to the user, what they want help with (ideally in their words), who asked for the session, any history, and the time available. Look for earlier session notes with Glob (`**/*coaching*`, `**/*1-1*`, `**/*one-to-one*`) and read the agreed next steps first.

## Ask first when the input is thin

Ask in one message, at most:

1. Who is the coachee, and what is your relationship: their coach, their manager, a peer?
2. Who asked for this session, the coachee or someone else? If someone else, what does the coachee know about that?
3. What do they want to work on, in their own words if you have them?
4. Is this a first session or a follow-up? What was agreed last time?
5. How long do you have, and is it in person or remote?

If the user says "just draft it", plan a 45-minute first session, mark everything about the coachee's situation [TBC], and keep the questions general. Never invent what the coachee said or feels.

## How to build it

- **Contract first, about 5 minutes.** Agree what they want from this session ("What would make the next 45 minutes useful for you?"), what stays confidential and the limits of that (risk of harm), your role ("I'll mostly ask. If I have a suggestion, I'll ask before I share it."), and permission to interrupt or challenge.
- **Three-way contracting when someone else asked.** If a manager asked you to coach someone, hold a short joint conversation first. The manager says what they hope for, the coachee says what they want, and all three agree what goes back to the manager. The default is attendance plus themes the coachee chooses to share, never session content. If the manager wants an assessment of the person, that is the manager's job, not coaching.
- **Look at the system before the person.** When the referral is about a number (velocity down, missed dates), the coachee's goal often sits in the system around them: too much work in progress, a reorganisation, unclear priorities. Leave room to explore that.
- **Prepare more questions than you need, then pick.** Three or four per stage. One question at a time, then wait. 5 to 10 seconds of silence is fine.
- **Write the questions in the coachee's language.** "What would 'getting control of the backlog' look like on a normal Tuesday?" beats a generic question.

## GROW, with timings for 45 minutes

GROW (goal, reality, options, way forward) is the default. Use another model if the user prefers one.

| Stage | Minutes | Purpose |
|---|---|---|
| Contract | 5 | Agree focus, confidentiality and roles |
| Goal | 7 | What they want from this session and beyond |
| Reality | 13 | What is happening now, with examples, and what they've tried |
| Options | 10 | Several possibilities before choosing |
| Way forward | 7 | Choose, commit, first step, support |
| Close | 3 | What was useful, follow-up, next session |

For 60 minutes, add the time to Reality and Options.

**Goal**
- What would you like to be different by the end of this conversation?
- If this goes well over the next month, what will you notice?
- What makes this important to you now?

**Reality**
- What is happening now? Can you give me a recent example?
- What have you tried so far, and what happened?
- Which part of this is in your control?
- Who else is involved, and how might they see it?
- On a scale of 1 to 10, where are you now?

**Options**
- What could you do? What else? (Ask "what else?" at least twice.)
- If nothing stood in the way, what would you try?
- What is the smallest thing you could try this week?
- What would someone you respect do here?

**Way forward**
- Which option will you try first, and by when?
- What might get in the way, and what will you do then?
- On a scale of 1 to 10, how likely are you to do it? What would make it a 9?
- What support do you need, and from whom?

## What to listen for

- **Energy shifts.** Pace, volume, a sigh, a long pause. Name it lightly: "Your voice changed when you mentioned the roadmap."
- **"Should", "have to", "can't".** These often hide an assumption or someone else's expectation. "Who says you have to?"
- **"Always" and "never".** Ask for one specific example.
- **Talking only about others.** Bring it back: "And what is your part in this?"
- **The goal under the goal.** "Stakeholders keep going around me" may sit on "I'm not sure I'm allowed to say no".

## Switching stance

Coaching is the default. Say out loud when you switch, and when you switch back.

| Stance | When | How |
|---|---|---|
| Coaching | They have what they need and need to think it through | Questions, reflecting back, silence |
| Mentoring | They've run out of options, or ask "what would you do?", and you have relevant experience | Ask first: "Would it help if I shared what I've seen work?" Offer two or three options, then: "Which of those fits you?" |
| Teaching | They're missing a concept or skill, such as how a WIP limit works | "Let me put my teacher hat on for two minutes." Keep it short, then go back to coaching |
| Telling | Only when something is unsafe, unethical or breaks a law | Be direct, and say why you stepped out of coaching |

## What to avoid

- Leading questions ("Don't you think ...?", "Have you tried ...?"). They are advice in disguise.
- "Why" questions that sound like blame. "What led to that?" works better than "Why did you do that?"
- Stacking two or three questions in one breath.
- Solving it for them, even when you are sure of the answer.
- Agreeing with complaints about people who aren't in the room.
- Coaching outside your competence. If the conversation turns to mental health, a grievance or a legal matter, pause and help them find the right support.

## Output

````markdown
# Coaching session plan: [coachee], [date]

**Coachee:** [name, role] · **Relationship:** [coach / manager / peer] · **Requested by:** [coachee / name]
**Time:** [minutes, in person or remote] · **Session:** [first / follow-up to [date]]

## What we know
- [Facts from the user only. Anything else is [TBC].]

## Contracting
- Opening question: "[...]"
- Confidentiality: [what stays between us, what doesn't]
- My role: [mostly questions, ask before advising]
- [If someone else asked: three-way agreement and what gets reported back]

## Plan
| Stage | Minutes | Questions to choose from |
|---|---|---|
| Goal | [n] | [2 to 4 questions in the coachee's language] |
| Reality | [n] | [...] |
| Options | [n] | [...] |
| Way forward | [n] | [...] |

## Listen for
- [Two or three things specific to this coachee]

## If I switch stance
- [Likely moment, the permission question, the two or three options I could offer]

## Avoid
- [Two or three traps specific to this conversation]

## Follow-up note (for the coachee, written by them if possible)
> **Date:** [date] · **What I wanted:** [goal in their words]
> **What I noticed:** [insights in their words]
> **What I'll do:** [actions, by when]
> **Support I asked for:** [who, what]
> **Next session:** [date]
````

## Example

Input: "Coaching Elif on Thu 12 Nov. PO for the onboarding squad at Brightwater, 4 months in, used to be a BA. Sales go straight to the devs. She asked for help 'getting control of the backlog'. 45 mins, in person."

Output (excerpt):

```markdown
## Contracting
- Opening question: "You said you want to get control of the backlog. What would make today useful for that?"
- My role: mostly questions. If I have an idea, I'll ask before I share it.

## Plan
| Stage | Minutes | Questions to choose from |
|---|---|---|
| Goal | 7 | What would "control of the backlog" look like on a normal Tuesday? How would you know you had it? |
| Reality | 13 | Tell me about the last time sales went straight to a developer. What happened next? What have you tried so far? |
| Options | 10 | What could you do? What else? What's one thing you could try before the next sprint? |
| Way forward | 7 | Which will you try first? Who needs to hear about it? How likely, 1 to 10? |

## If I switch stance
- If she asks how other POs handle this: "Would it help if I shared a few things I've seen work?" Then offer a single intake channel, a weekly stakeholder triage, or making the ordered backlog visible to sales, and ask which fits her.
```

## Checks before you hand it over

- Contracting comes first, and if someone other than the coachee asked, the plan includes a three-way agreement and keeps session content confidential.
- Every question is open and none of them hides advice.
- Any switch to mentoring or teaching starts with a permission question.
- Nothing about the coachee's situation, words or feelings is invented. Gaps are [TBC].
- The follow-up note template is included and belongs to the coachee.
