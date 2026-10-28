---
name: retro
description: Plan or write up a sprint retrospective with a fitting format and at most three owned actions. Use when the user says "retro", "retrospective", "plan our retro", "retro ideas", "the team is bored of retros", "what format should we use", or pastes a retro board (Miro, FigJam, Parabol, sticky notes) to turn into themes and actions.
argument-hint: "[how the sprint went and the team's mood, or paste the retro board]"
---

# Sprint Retrospective

The retrospective is where the Scrum Team decides how to work better next sprint: people, interactions, process, tools and the Definition of Done. A good one ends with one to three changes the team actually tries, each with an owner and a way to tell whether it worked.

The usual failure is forty sticky notes, ten vague actions owned by "the team", and the same complaints next time because nothing from the last retro happened. Teams don't get tired of retrospectives. They get tired of retrospectives that change nothing.

## Input

Two modes. **Plan:** how the sprint went, the team's mood, team size, room or remote, the time available and last retro's actions. **Summarise:** a pasted retro board, notes or a photo transcription.

Look for previous retro notes and sprint data in the project with Glob (`**/*retro*`, `**/*sprint*`) and read the last retro's actions before anything else.

## Ask first when the input is thin

In plan mode, ask in one message, at most:

1. How did the sprint go, in a sentence or two? Any big events: an incident, a release, someone leaving?
2. How is the mood: energised, tired, tense, fed up with retros?
3. How many people, in a room or remote, and how long do you have? (Default: 90 minutes for a two-week sprint.)
4. What actions came out of the last retro, and did they happen?
5. Anything sensitive I should know about?

In summary mode, don't ask: work from the board and list the gaps at the end. If the user says "just draft it", plan with the defaults, say which format you picked and why, and mark gaps [TBC]. Never invent feedback, votes or quotes.

## Rules

**Check last retro's actions first.** Five minutes at the start. For each: done and it worked, done and it didn't, or not done. Not done twice means drop it or find out why. If the team rarely finishes retro actions, make that the topic of this retro.

**Pick the format for the situation, and say why.** One sentence that ties the choice to this team: "Timeline, because Tuesday's outage is the thing everyone remembers differently." Never pick on rotation.

**Use the five phases** from Esther Derby and Diana Larsen's *Agile Retrospectives*. Timebox: up to 1.5 hours for a two-week sprint, up to 3 hours for a month.

| Phase | Purpose | 90 min | 60 min |
|-------|---------|--------|--------|
| 1. Set the stage | Focus; everyone speaks in the first 5 minutes; last retro's actions | 10 | 7 |
| 2. Gather data | A shared picture of what happened: facts and feelings | 25 | 15 |
| 3. Generate insights | Why it happened: patterns and causes | 25 | 18 |
| 4. Decide what to do | Choose at most three actions | 20 | 15 |
| 5. Close | Recap the actions; quick feedback on the retro | 10 | 5 |

**Bring data, not just memories.** Sprint Goal met or not, forecast against completed, carry-over, incidents, cycle time. Memory favours the last three days of the sprint.

**Silent writing before talking.** Five to seven minutes of individual notes, so the loudest person doesn't set the agenda. Then cluster and dot vote: three votes each, discuss the top two or three clusters.

**Ask why before what.** Use 5 whys, or "what would have to be true for this to happen again?" Actions written before anyone understands the cause fix symptoms.

**At most three actions. One is often better.** Each has one owner, a start date, and a way to tell whether it worked: "Median PR wait under one working day by the next retro." The owner makes sure it happens, not that they do it alone. An action that needs team time goes into the next Sprint Backlog, which the Scrum Guide 2020 allows. Anything the team can't fix itself goes to the impediment log.

**Safety first.** In a tense team, run an anonymous safety check (1 to 5) in set the stage. If the average is 3 or below, keep cards anonymous. The retro is for the Scrum Team; managers come only when the team invites them.

**Formats library**

| Format | Prompts | Use when | Skip when |
|--------|---------|----------|-----------|
| Start Stop Continue | Start, Stop, Continue | New team, short retro, you want concrete behaviour changes | The team has done it three times running |
| 4Ls | Liked, Learned, Lacked, Longed for | After a release or a sprint full of learning | You need to dig into one big problem |
| Sailboat | Wind (helps), Anchors (slows), Rocks (risks ahead), Island (goal) | A clear goal or release ahead; a quiet team that likes a picture | Straight after a crisis |
| Mad Sad Glad | Mad, Sad, Glad | Morale has dropped, or there was tension to talk about | Safety is low and people won't share feelings in a group |
| Timeline | Events along the sprint, with a mood line | An incident, a long sprint, or people remember it differently | A short, quiet sprint |
| Starfish | Keep, More of, Less of, Stop, Start | An experienced team tuning, not overhauling | A new team: too many categories |
| Lean Coffee | Team writes topics, votes, 5 to 8 minutes per topic | Many small topics; an experienced team; little prep time | You need to look hard at one event |
| Retro of retros | Last five retros' actions: done? worked? what keeps coming back? | The team is tired of retros; the same issues return | Nobody kept notes from earlier retros |
| One question | One sharp question, discussed in pairs, then one action | A tired team, 30 to 45 minutes, low energy | A big incident to unpick |

For a team that is tired of retros, start with a retro of retros: it confronts the real reason (nothing changes) instead of finding a new way to list the same complaints. Good single questions: "What one change would make next sprint easier?" or "What are we tolerating that we shouldn't?"

**Remote tips**
- One board for everyone, prepared before the retro, linked in the invite.
- A visible timer for silent writing. Anonymous cards when safety is low.
- Breakout rooms of three or four for insights when the team is seven or more.
- 60 to 75 minutes is plenty online. Take a 5-minute break at 45 minutes if you go longer.
- Across time zones, gather data on the board the day before and meet only for insights and decisions.

## Output

**Plan mode:**

````markdown
# Retrospective plan, Sprint [n], [date]

**Format:** [name], because [one sentence tied to this team]
**Timebox:** [n] min · **Where:** [room or board link] · **Facilitator:** [name]

## Before the retro
- [ ] Collect last retro's actions and their status
- [ ] Pull the sprint data: Sprint Goal met?, forecast against completed, carry-over, incidents
- [ ] Prepare the board

## Running order
| Time | Phase | Activity |
|------|-------|----------|
| 0:00 to 0:10 | Set the stage | [Activity] |
````

**Summary mode:**

````markdown
# Retrospective, Sprint [n], [date]

**Format:** [name] · **Attendees:** [names]

## Last retro's actions
| Action | Owner | Done? | Did it work? | Keep, change or drop |
|--------|-------|-------|--------------|----------------------|

## Themes
1. **[Theme]** ([n] cards, [n] votes): [one line]

## Actions (at most three)
| # | Action | Owner | Starts | How we'll know it worked |
|---|--------|-------|--------|--------------------------|

## For the impediment log
- [Things the team can't fix itself]
````

In summary mode, group cards into themes by meaning, count the votes, and pick actions from the top themes. Take owners from the board. Where there is none, write [owner?] rather than choose someone.

## Example

Input: "Plan our retro for Fri 20 Nov 2026. 7 people, remote, 75 minutes. We had a production outage on Tue 10 Nov that took a day to fix. People are tense. Last retro had three actions; one got done."

Output (excerpt):

```markdown
# Retrospective plan, Fri 20 Nov 2026

**Format:** Timeline, because the outage on Tue 10 Nov shaped the sprint and people saw different parts of it. A shared timeline gets the facts straight before anyone looks for causes.
**Timebox:** 75 min · **Where:** [board link TBC] · **Facilitator:** [TBC]

## Running order
| Time | Phase | Activity |
|------|-------|----------|
| 0:00 to 0:10 | Set the stage | Anonymous safety check (1 to 5); the two unfinished actions from last retro: keep or drop? |
| 0:10 to 0:30 | Gather data | Silent writing on a timeline of the sprint, then a mood line per person |
| 0:30 to 0:50 | Generate insights | Breakouts of 3 and 4: what made the outage take a day to fix? 5 whys on the top cluster |
| 0:50 to 1:05 | Decide what to do | Dot vote, at most two actions, each with one owner and a measure |
| 1:05 to 1:15 | Close | Read back the actions; one word each on how the retro felt |
```

## Checks before you hand it over

- Last retro's actions are reviewed before new ones are chosen.
- The format choice has a reason tied to this team's situation.
- Phase times add up to the timebox or less.
- At most three actions, each with one owner (or [owner?]) and a way to tell whether it worked.
- In summary mode, every theme and vote comes from the board. Nothing is invented.
