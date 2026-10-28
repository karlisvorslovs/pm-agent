---
name: team-health-check
description: Design, run and read out a team health check with traffic lights, trends and experiments. Use when the user asks for a health check, a squad health check, a team pulse or morale check, wants to know "how the team is really doing", or pastes health check votes and comments to make sense of.
argument-hint: "[team and context, or paste the votes and comments]"
---

# Team health check

A health check gives a team a structured way to say how things really are, and a short list of things to change. A good one takes 60 to 90 minutes, uses the team's own words as evidence, and ends with one to three small experiments that each have an owner and a review date.

It goes wrong in two ways. It becomes a survey nobody acts on, or the scores leave the room and turn into a league table of teams. Both teach people that honesty is pointless or risky, and from then on every vote is green.

## Input

A request to design a session, raw results to read out (votes, sticky notes, a form export, a whiteboard dump), or both. Look for earlier health checks and retro notes with Glob (for example `**/*health*`, `**/*retro*`) and read them first. A previous result is what gives you a trend.

## Ask first when the input is thin

Ask in one message, at most:

1. How many people are in the team, and are they co-located, remote or hybrid?
2. Is this the first health check, or is there an earlier one to compare with?
3. Who asked for it, and who expects to see the results?
4. Is the team going through anything right now, such as a reorganisation, a hard release or people leaving?
5. How much time do you have: 60 or 90 minutes, or an async vote plus a shorter discussion?

If results are pasted, don't ask about design. Read them out and list the gaps at the end. If the user says "just draft it", plan for 6 to 8 people, hybrid, first run, 75 minutes, and list those assumptions. Never invent votes, trends or quotes. A dimension without data is [TBC].

## Dimensions

Start from the Spotify Squad Health Check model (Kniberg and Lindwall, 2014). Each dimension has a green and a red description so everyone votes against the same picture. The wording below is ours. Adapt it with the team.

| Dimension | Green looks like | Red looks like |
|---|---|---|
| Easy to release | Releasing is routine, mostly automated and low risk | Releasing is slow, manual and stressful |
| Suitable process | Our way of working fits us | Our process gets in the way |
| Tech quality | The code is easy to change and well tested | Technical debt slows everything down |
| Value | We ship things that matter and stakeholders are happy | We ship things nobody seems to use |
| Speed | Work moves quickly with little waiting | Work keeps getting stuck or interrupted |
| Mission | We know why we exist and it means something to us | We don't know what we're for |
| Fun | We enjoy working together | Work feels like a chore |
| Learning | We learn new things all the time | We never have time to learn |
| Support | We get help quickly when we ask | We stay stuck because help doesn't come |
| Pawns or players | We have a real say in what we build and how | Decisions are made for us |
| Teamwork | We work as one team and help each other | We're individuals with separate work |

- **Use 8 to 12 dimensions.** Fewer misses things. More than 12 tires people and the last few get careless votes.
- **Let the team swap dimensions.** A team with no code might drop Tech quality and add "Workload" or "Clear priorities". Ask "what's missing from this list?" before the first run.
- **Keep the set and wording stable for at least three rounds.** Renaming "Speed" to "Flow" breaks the trend.

## Scoring

- **Traffic light per person per dimension.** Green: fine, no big need to improve. Amber: real problems, not a disaster. Red: this needs to change. (The original says yellow. Either works.)
- **Trend per dimension:** ↑ better, → about the same, ↓ worse. Ask for it even on a first run: "compared with three months ago". If the team didn't give a trend, derive it from the previous counts and say you did.
- **Record the spread, not an average.** "G4 A0 R3" is a different conversation from "G0 A7 R0". Never convert colours to numbers and average them.
- **Summary colour** is the most common vote. If no colour has more than half the votes, write "Split". Splits are often the best thing to talk about.

## Facilitation plan

Default 75 minutes for 5 to 9 people:

| Minutes | Step | How |
|---|---|---|
| 5 | Open | Why we're doing this, who sees the results, that it is about the system and not about people |
| 15 | Vote | Silent, all dimensions, 60 to 90 seconds each |
| 5 | Reveal | Show all votes at once. No explaining yet |
| 30 | Talk | Reds, splits and ↓ trends first, at most 8 minutes each. Write down the words people use |
| 15 | Choose | 3 dots each on what to work on. Shape one to three experiments with owners |
| 5 | Close | Read back the experiments, the review date and exactly what leaves the room |

Anonymity options, from most to least anonymous:

- **Async form before the session**, with names off. Close it 24 hours before so you can prepare the reveal. Most anonymous, least energy.
- **Hidden voting on a whiteboard tool**, revealed all at once.
- **Cards face down**, shuffled and counted aloud by the facilitator.
- **Open voting**, everyone holds up a coloured card at the same moment. Fast and honest in a team with high trust. Don't use it on a first run or after a recent conflict.

Two rules that apply to every option:

- **Small teams are easy to de-anonymise.** With 4 people, one red on Support points at someone. Under 5 people, show only the summary colour and themes, not counts.
- **The manager doesn't facilitate.** If the line manager is part of the team, they vote like anyone else and a neutral person runs it. If people won't speak freely with the manager there, run it without them and share the summary afterwards.

**Remote version:** the same 75 minutes, a board prepared in advance with one column per dimension, a hidden vote or a form, cameras optional, and a 5-minute break after the reveal. When the talk step goes quiet, use a chat waterfall: everyone types one sentence on why they voted that way and sends it on the count of three.

## Who sees the results

Agree this in the first 5 minutes, not afterwards.

- **The team sees everything it produced:** counts, trends, comments, experiments.
- **Nobody outside the team sees individual votes or raw comments.** Not the manager, not HR, not the coach's sponsor.
- **What goes upward is the team's choice.** By default: summary colours, two or three lines of themes and the experiments. The team reads it before it is sent.
- **No ranking or comparing teams.** Scores are self-reported against each team's own expectations. An honest team looks worse than a scared one, so a ranking punishes honesty.
- **Cross-team patterns are fine with consent.** If six of eight teams are red on Easy to release, that is a platform investment, not eight team problems. Show patterns by dimension, never by team name.
- **Never tie results to performance reviews, bonuses or headcount.** If asked, say no, explain why, and offer the cross-team pattern view.

## Reading out the results

- **Lead with the team's own words.** Group comments into three to five themes. Paraphrase anything that names or points at a person. A read-out never attaches a vote or comment to a name.
- **Look at spread and trend before colour.** A steady amber that has gone ↓ two rounds running is more urgent than a new red the team already knows how to fix.
- **Connect dimensions.** Red on Speed and Easy to release with green on Teamwork usually means the system is the problem, not the people.
- **Name what is going well.** One or two greens with a reason, so the team knows what to protect.
- **End in one to three experiments, never more.** Each has an owner from the team, a start date and a review date two to four weeks later. If the team named no owner, write [owner?]. More than three means none happen.

## Output

````markdown
# [Team] health check, [date]

**Participants:** [n] of [team size] · **Format:** [in person / remote / hybrid] · **Previous check:** [date or "first run"]
**Who sees this:** [the team only / the team, plus the summary below to [name], agreed on [date]]

## Results
| Dimension | Summary | Votes G/A/R | Trend | In the team's words |
|---|---|---|---|---|
| [Dimension] | [Green / Amber / Red / Split] | [4/2/1] | [↑ / → / ↓ / [TBC]] | "[short quote or paraphrase, no names]" |

## Themes
1. **[Theme in plain words].** [Two or three lines: which dimensions it touches and what people said.]

## What is going well
- **[Dimension]:** [why, in the team's words]

## Experiments
| # | We will try | Because | Owner | Start | Review on | It worked if |
|---|---|---|---|---|---|---|
| 1 | [Specific change] | [Theme] | [Name or [owner?]] | [date] | [date] | [Observable signal] |

## Summary to share outside the team
> [Only if the team agreed. Three to five lines: colours, themes, experiments, any help needed. No quotes. No counts if the team has fewer than 5 people.]

**Next health check:** [date, 8 to 12 weeks away]
````

For a design-only request, give the facilitation plan, the dimensions with their green and red descriptions, the anonymity option and why, the "who sees it" rules, and a four-sentence opening script.

## Example

Input:

```
platform team health check thu 5 nov, 7 of 7 voted. previous one 6 aug.
easy to release 1/2/4, aug was 2/3/2. "deploys still need Raimo on a friday night"
speed 2/3/2, same as aug. "2 weeks waiting for security review on any new dependency"
support 1/2/4, aug 3/3/1. "security never answer tickets"
fun 6/1/0, aug 4/2/1. teamwork 6/1/0
agreed: weekly slot with security (Ines will ask them), pair on every release
ok to send summary to Lukas (eng manager)
```

Output (excerpt):

```markdown
# Platform team health check, Thu 5 Nov 2026

**Participants:** 7 of 7 · **Format:** [TBC] · **Previous check:** Thu 6 Aug 2026
**Who sees this:** The team, plus the summary below to Lukas (engineering manager), agreed in the session.

## Results
| Dimension | Summary | Votes G/A/R | Trend | In the team's words |
|---|---|---|---|---|
| Easy to release | Red | 1/2/4 | ↓ | "Deploys still depend on one person being free on a Friday night" |
| Speed | Split | 2/3/2 | → | "Two weeks waiting for a security review on any new dependency" |
| Support | Red | 1/2/4 | ↓ | "Security tickets go unanswered" |
| Fun | Green | 6/1/0 | ↑ | [TBC] |
| Teamwork | Green | 6/1/0 | [TBC] | [TBC] |

## Experiments
| # | We will try | Because | Owner | Start | Review on | It worked if |
|---|---|---|---|---|---|---|
| 1 | A fixed weekly slot with security for reviews | Waiting on security | Ines | Mon 9 Nov 2026 | Thu 26 Nov 2026 | No review waits more than [5] working days |
| 2 | Pair on every release | Few people can release | [owner?] | Mon 9 Nov 2026 | Thu 26 Nov 2026 | Two more people have each run a release |
```

The comment that named a colleague is paraphrased as a dependency. The summary for Lukas mentions "few people can run a release", not who.

## Checks before you hand it over

- No vote, quote or theme is attached to a named or identifiable person.
- Every count, trend and quote comes from the input. Gaps are [TBC], never guessed.
- One to three experiments, each with an owner or [owner?], and dates with the correct weekday.
- The "Who sees this" line is filled in, and the outside summary holds only what the team agreed.
- Nothing ranks or compares this team with another team.
