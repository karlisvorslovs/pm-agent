---
name: workshop-design
description: Design a workshop with outcomes, a timed agenda, named activities, materials and a remote variant. Use when the user needs to plan or facilitate a session such as a team inception, value stream mapping, quarterly planning, a cross-team retro, an offsite or a kick-off, or asks "how should I run this session".
argument-hint: "[what the session is for, who's coming, how long]"
---

# Workshop design

A workshop is worth the time when the group leaves with something it couldn't have made alone: a decision, a shared map, a plan people believe in. A good design starts from the outcomes and works backwards, gives every activity a time and a question, and protects quiet people from loud ones.

The usual failure is a meeting with sticky notes: a packed agenda, no decision rule, and a sponsor who already knows the answer. The second is running out of time before the converge step, so the session ends with a wall of ideas and no owner for any of them.

## Input

What the session is for, who is coming, how long it is, where, and what has already been decided. Look for earlier workshop outputs, retro notes or the problem write-up with Glob (`**/*workshop*`, `**/*retro*`, `**/*offsite*`) and read them first.

## Ask first when the input is thin

Ask in one message, at most:

1. What should exist at the end that doesn't exist now? A decision, a map, a list of experiments, a plan?
2. Who is coming, how many, and who has the authority to decide?
3. How long, and is it in person, remote or hybrid?
4. What is already decided or not up for discussion?
5. What could make it go badly: tension between groups, a dominant voice, a decision already made?

If the user says "just draft it", design for 2 hours, 8 to 12 people, hybrid, mark the purpose details [TBC], and list your assumptions.

## How to build it

- **Purpose in one sentence, outcomes as things.** Purpose is why we meet. Outcomes are two to four artefacts that will exist at the end: "the three biggest delays in our release process, each with an owner and a first experiment".
- **State the decision rule up front.** Who decides and how: the group by consent, the sponsor after hearing the group, or advice only. Put it in the invitation. If the sponsor has already decided, the session is about how, not whether. Fake participation is worse than none.
- **Shape: open, diverge, converge, close.** Open gets every voice into the room in the first 10 minutes. Diverge widens before judging. Converge narrows to choices. Close confirms owners, dates and next steps. The uncomfortable stretch between diverge and converge (the "groan zone" in Sam Kaner's diamond) is normal, so leave time for it.
- **Timing.** Converge and close get at least 40% of the time. Keep 10% as buffer. Break every 60 to 90 minutes in person, every 50 minutes remote. Keep remote sessions to 3 hours a day at most and split longer ones across days.
- **Group size.** Open discussion works up to about 8 people. Above that, use pairs and groups of 3 to 5, and harvest one idea per group.
- **Every activity has a question.** "Discuss the release" is not an activity. "1-2-4-All: what slowed our last release down the most?" is.
- **Write before talking.** A minute of silent writing before any discussion stops the first speaker setting the agenda.

## Activities

| Activity | Use it to | Time | How |
|---|---|---|---|
| Impromptu Networking | Open with groups over 10 | 20 min | Three rounds of pairs, about 5 min each, on two questions: what challenge you bring, and what you hope to get from and give to the group |
| 1-2-4-All | Get ideas from everyone | 12 min | 1 min alone, 2 min in pairs, 4 min in fours, 5 min whole group with one idea per four |
| TRIZ | Stop habits that hurt | 35 min | 5 min intro, 10 min listing how to guarantee the worst result, 10 min marking what we already do that looks like it, 10 min choosing first things to stop |
| 15% Solutions | Turn talk into action people control | 20 min | 5 min alone: what can I do without more resources or permission? Then groups of 3 or 4, about 4 min per person to share and get questions |
| What, So What, Now What | Make sense of a shared experience | 45 min | Facts first, then patterns, then actions, each round in small groups |
| Troika Consulting | Peer help on individual challenges | 30 min | Groups of 3, 10 min per person: present, the other two discuss while the presenter listens with their back turned, then reflect |
| Affinity mapping | Group many ideas into themes | 15 min | 8 min silent clustering, 5 min naming clusters, 2 min checking strays |
| Dot voting | Converge quickly | 5 to 10 min | 3 to 5 dots each, or one per three options; vote silently, decide beforehand whether dots can stack |
| Fishbone | Find causes of one problem | 30 to 40 min | Problem at the head; 4 to 6 bones that fit, such as process, tools, skills, environment, information, dependencies; ask "what causes that?" until you reach something the group can change; dot vote the causes to tackle |
| Lean Coffee | Let the group set the agenda | 30 to 60 min | Write topics, dot vote, 8 min per topic, thumbs up to extend by 4 |
| Fist of five | Check consent | 5 min | 5 love it, 3 can live with it, 0 block; anyone under 3 is heard and the proposal amended |

## Common asks

- **Team inception** (half a day to two days, a new team or a new product). Why we exist and for whom, an in and out list, the biggest risks (TRIZ or a pre-mortem), a first working agreement, the first two or three experiments. Jonathan Rasmusson's Agile Inception Deck is a good source of questions.
- **Value stream mapping** (3 to 4 hours, people from every step, including upstream and downstream). Pick one stream with a clear trigger and end ("customer reports a bug" to "fix in production"). Walk 3 to 5 real recent items, not memory. For each step record process time, wait time and percent complete and accurate (how often the next step can use the work without rework). Calculate lead time and flow efficiency (process time divided by lead time). Dot vote the biggest delays and sketch the next three months.
- **Quarterly planning** (half a day to a day). Context and goals from leadership (30 min), review last quarter's outcomes (30 min), draft objectives per team (90 min), a dependency board across teams (45 min), a confidence vote with fist of five (10 min), then adjust. Base capacity on past throughput, not hope.
- **Cross-team retro** (2 to 3 hours, 2 to 4 people per team plus shared functions). Open with a blameless frame such as Norm Kerth's Prime Directive, build one shared timeline (30 min), look at hand-offs between teams rather than inside them (fishbone or What, So What, Now What), and close with 15% Solutions plus two or three system-level experiments with owners.

## Roles

- **Lead facilitator:** runs the process and stays neutral on content.
- **Producer or co-facilitator:** time, breakout rooms, board, tech. Needed for remote, hybrid or more than 15 people.
- **Harvester:** writes decisions, owners and dates as they happen.
- **Sponsor:** opens (purpose, decision rule, what is out of scope) and closes (commitment). Never facilitates their own decision.

## Remote and hybrid

- Prepare the board before the day: one frame per activity, with the question and instructions written on it.
- 50-minute blocks, 10-minute breaks, 3 hours a day at most.
- Breakout rooms of 3 to 5. Pre-assign them if mixing teams matters.
- Silent writing on the board replaces the "1" in 1-2-4-All. A chat waterfall (type, send on the count of three) replaces shouting out.
- Hybrid is the hardest format. Either everyone joins from their own laptop and headset, or a producer in the room looks after only the remote people.

## Output

````markdown
# Workshop: [name], [date]

**Purpose:** [one sentence]
**Outcomes:** 1. [artefact] 2. [artefact]
**Participants:** [who, how many] · **Decision rule:** [who decides, how]
**Format:** [in person / remote / hybrid], [start] to [end]

## Agenda
| Time | Min | Block | Activity and question | Output |
|---|---|---|---|---|
| [09:00] | [10] | Open | [activity: question] | [what exists after] |

## Activities in detail
### [Activity]
[Steps with timings, group sizes, the exact question on the slide or board]

## Materials
- [In person: stickies, markers, dots, wall space. Remote: board link, breakout plan]

## Roles
- [Lead facilitator, producer, harvester, sponsor: names or [TBC]]

## Remote variant
- [What changes: timings, tools, breakouts, how remote people contribute]

## Risks
| Risk | Early sign | What we'll do |
|---|---|---|

## Before and after
- Invitation with purpose and decision rule sent by [date]
- Write-up with owners and dates sent within 24 hours
````

## Example

Input: "value stream mapping for how a customer bug becomes a fix in prod. support, 2 dev teams, QA, ops, about 10 people. half a day in the office, wed 18 nov. sponsor is the head of engineering, Ruta."

Output (excerpt):

```markdown
# Workshop: Bug to fix value stream, Wed 18 Nov 2026

**Purpose:** See where a customer bug waits on its way to a fix, so we can cut the wait.
**Outcomes:** 1. A current-state map with real times for 3 recent bugs 2. The top 3 delays, dot voted 3. Two or three experiments with owners and review dates
**Decision rule:** The group chooses the experiments by consent. Ruta confirms any that need budget.

| Time | Min | Block | Activity and question | Output |
|---|---|---|---|---|
| 09:00 | 15 | Open | Ruta: purpose and decision rule. Pairs: "What slowed down the last bug you touched?" | Everyone has spoken |
| 09:15 | 60 | Diverge | Walk 3 real bugs step by step; each step gets process time, wait time and % complete and accurate | Current-state map |
| 10:15 | 15 | Break | | |
| 10:30 | 20 | Diverge | Add up lead time and process time; calculate flow efficiency | Numbers on the wall |
| 10:50 | 30 | Converge | Dot vote (3 each) on the biggest delays, then fishbone on the top one | Top 3 delays, causes |
| 11:20 | 40 | Converge | 15% Solutions, then shape 2 or 3 experiments | Experiments with owners |
| 12:00 | 20 | Close | Fist of five on the experiments, review dates, one-word check-out | Commitments |
| 12:20 | 10 | Buffer | | |
```

## Checks before you hand it over

- The timings add up to the slot, with a buffer, and converge plus close take at least 40%.
- Each activity has a specific question and a named output.
- The decision rule is stated, and nothing in the design pretends a decision is open when it isn't.
- There is a remote or hybrid variant, even if the session is planned in person.
- Nothing about the group, their conflicts or past decisions is invented. Gaps are [TBC].
