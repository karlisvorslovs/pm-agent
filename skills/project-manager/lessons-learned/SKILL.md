---
name: lessons-learned
description: Plan a lessons learned session, or write up its results as reusable rules with owned actions. Use when the user asks for a lessons learned session or log, a project retrospective, a post-project or post-implementation review, a post-mortem, a closure review, or "what should we do differently next time".
argument-hint: "[\"plan\" to prepare the session, or paste the notes from it]"
---

# Lessons learned

Lessons learned only matter if the next project finds them and does something differently. A good session is blameless, works from a shared timeline of facts rather than memories, and ends with a few lessons written as rules ("When X, do Y") and actions with owners. A good write-up fits on two pages and is filed where the next project manager will look.

The usual failure is 40 sticky notes typed into a document in a closure folder nobody opens. The second is a session that finds someone to blame, which guarantees the next one finds nothing.

## Two modes

- **Plan the session:** the user is preparing one. Produce the agenda, the prompts, the timeline exercise and the ground rules.
- **Write up the results:** the user has notes, a board export or a transcript. Produce the write-up.

Decide from the input. Notes or a transcript mean write-up. "We're doing a lessons learned next week" means plan. If it is unclear, ask.

## Input

For planning: the project, its dates, who will attend, how long the session is, in person or remote, and what went notably well or badly. For a write-up: the notes, plus baseline against actual for dates, cost and scope. Look with Glob for the schedule, RAID log, change log and status reports (`**/*schedule*`, `**/*raid*`, `**/*change*log*`, `**/*status*`), and for an existing lessons register (`**/*lessons*`) to add to.

## Ask first when the input is thin

Ask in one message, at most:

1. Do you want to plan a session, or write up one that has happened?
2. Which project or phase, and the dates it ran?
3. For a plan: who will be there, how long you have, and in person or remote? For a write-up: can you paste the notes or the board export?
4. What were the planned and actual end date, cost and scope?
5. Where does your organisation keep lessons (a lessons register, a Confluence or SharePoint space, a PMO template)?

If the user says "just do it", plan a two-hour session with [TBC] for names and dates, or write up what the notes contain and list the gaps. Never invent a finding, a cause or a number.

## Mode A: plan the session

- **Hold it within 2 to 4 weeks of the end,** or at the end of each phase for projects longer than 6 months. After a month, memories blur and people have moved on.
- **6 to 12 people,** including those who did the work, not only the leads. Above 12, split into groups by workstream and bring the results together. If the sponsor's presence would stop people talking, invite them to the last 30 minutes for the actions.
- **A neutral facilitator,** ideally not the PM. The PM made many of the decisions being discussed.
- **Blameless by design.** Open with the Prime Directive from Norm Kerth's retrospectives, in your own words: everyone did the best job they could with what they knew, their skills, the resources and the situation at the time. Ground rules: talk about decisions and conditions, not people; ask "what made that the sensible choice at the time?"; no names on problem cards; what is said in the room is reported without attribution. If there is known tension between groups, say so at the start and mix the groups at each table.
- **Build the timeline before the session** from the baseline, status reports, change log and RAID log: planned and actual milestones, change requests, key decisions, staff changes, incidents. People add events in one colour and mark highs and lows in another. Problems cluster around the lows.
- **Prompts that get past the obvious:** Where was the biggest gap between plan and actual? What did we know early but not act on? What surprised us? What would we keep exactly the same? If we started again tomorrow with the same team, what would we change first?
- **Pre-work:** a three-question survey a week before (what worked, what didn't, one thing to change). It gives quieter people a voice and seeds the board.
- **Dot-vote to choose:** three dots each, then dig into the top three clusters only.

## Mode B: write up the results

- **Start with what happened, in numbers:** baseline against actual for the end date (in working days or weeks), cost (amount and %) and scope.
- **What worked: three to five items,** specific enough that someone could repeat them.
- **What didn't: three to five items,** written as facts and conditions, never as people.
- **Root causes for the top two or three problems.** Use 5 whys where the cause isn't obvious. Stop at something the organisation can change: a process, a contract term, a template, a habit. If the chain ends at a person ("Sam didn't check"), ask one more why about the system around them.
- **Three to seven lessons, each a rule:** "When [situation], [do this], because [what happened here]." Test each: could a PM who wasn't on this project apply it on day one? "Communication could be better" fails. "When go-live needs a change window from operations, book it at kick-off, because the only free window was 6 weeks after our planned date" passes.
- **Lessons that need something to change get an action:** owner, date, done when. Typical actions update a template, add an item to a stage gate checklist, or change a standard contract clause. A lesson with no action is a note.
- **File it where the next project looks:** the organisation's lessons register, tagged by project type, phase and topic (procurement, testing, data migration). Link it from the closure report. Suggest adding "read the lessons register for similar projects" to the charter template. If you don't know where lessons live, write [TBC] and ask.
- **Names appear only as action owners and in thanks,** never next to a problem.

## Output

Mode A:

````markdown
# Lessons learned session: [Project], [date]

**Length:** [n] min · **Where:** [room or link] · **Facilitator:** [name] · **Attendees:** [names]
**Before the session:** survey out by [date]; timeline built by [name] by [date]

| Start | Length | Activity | Output |
|-------|--------|----------|--------|
| 0:00 | 10 min | Purpose, ground rules, Prime Directive | Agreed rules |
| 0:10 | 30 min | Walk the timeline, add events, mark highs and lows | Shared timeline |
| 0:40 | 25 min | What worked, what didn't: 7 min silent writing, then cluster | Clusters |
| 1:05 | 10 min | Break | |
| 1:15 | 25 min | Dot vote, then 5 whys on the top three clusters | Root causes |
| 1:40 | 15 min | Write lessons as "When X, do Y" and agree actions | Lessons and actions |
| 1:55 | 5 min | Where it gets filed, who writes it up by when | Close |

**Ground rules:** [list] · **Prompts:** [list] · **Materials:** [timeline, cards, dots or the online board]
````

Mode B:

````markdown
# Lessons learned: [Project], [dates]

**Session:** [date], [n] attendees · **Written up by:** [name] · **Filed in:** [location and tags]

## What happened
| | Baseline | Actual | Variance |
|---|---|---|---|
| End date | | | |
| Cost | | | |
| Scope | | | |

## What worked
- [Specific practice, and the result it had]

## What didn't
- [Fact or condition, and its effect]

## Root causes
**[Problem]:** why 1 → why 2 → ... → [cause the organisation can change]

## Lessons
| # | Lesson (When X, do Y, because Z) | Applies to | Action needed |
|---|----------------------------------|------------|---------------|

## Actions
| # | Action | Owner | Due | Done when |
|---|--------|-------|-----|-----------|
````

## Example

Input (write-up, excerpt of the notes):

```
- migration took 3 weeks longer than planned
- first trial load in week 10, 18% of customer records failed validation
- nobody had looked at the real data before then, SOW said "client provides clean data"
- our bid template has no data profiling step
```

Output (excerpt):

```markdown
## Root causes
**Migration 3 weeks late:** 18% of records failed validation at the first trial load → the first look at the real data was in week 10 → the statement of work assumed clean data, so no profiling was planned → the bid template has no data profiling step.

## Lessons
| # | Lesson (When X, do Y, because Z) | Applies to | Action needed |
|---|----------------------------------|------------|---------------|
| 1 | When a project migrates client data, profile a sample of the real data before the plan is baselined, because our first look came in week 10 and cost 3 weeks | Any project with data migration | Add a data profiling step to the bid template. Owner [TBC], due [TBC] |
| 2 | When a statement of work says the client provides clean data, define "clean" as acceptance criteria with a failure threshold, because "clean" meant nothing when 18% of records failed | Bids and statements of work | Add the definition to the SOW template. Owner [TBC], due [TBC] |
```

## Checks before you hand it over

- The mode matches the input: a plan when the session is ahead, a write-up when it has happened.
- In a plan, the agenda adds up to the time available.
- No problem is pinned on a named person.
- Every lesson is a "When X, do Y" rule a stranger could apply, and every needed action has an owner and a date or [TBC].
- The write-up says where it is filed.
- No finding, cause, number or name appears that is not in the input.
