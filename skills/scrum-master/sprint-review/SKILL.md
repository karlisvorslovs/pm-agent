---
name: sprint-review
description: Plan and write up a Sprint Review as a working session with stakeholders, not a demo show. Use when the user says "sprint review", "sprint demo", "prep the review", "who should we invite", "what do we show stakeholders", or pastes what got done this sprint, or notes from a review to write up.
argument-hint: "[Sprint Goal, done and not done items, who's coming, or paste review notes]"
---

# Sprint Review

The Sprint Review is where the Scrum Team and key stakeholders look at what was done, talk about what has changed around the product, and decide what to do next. The Scrum Guide 2020 calls it a working session and says the team should avoid limiting it to a presentation. A good review changes the Product Backlog.

The usual failure is a demo show: slides, a polished walkthrough, polite applause, and nobody asks anything that changes what the team builds next. The second is showing work that isn't Done "because they keep asking about it", which teaches stakeholders that nearly done counts.

## Input

Two modes. **Prepare:** the Sprint Goal, what is Done and not Done, who is coming, the Product Goal and any news. **Write up:** notes or a transcript from the review.

Look for the sprint backlog export, the last review's notes or a release plan in the project with Glob (`**/*review*`, `**/*sprint*`, `**/*roadmap*`) and read them first.

## Ask first when the input is thin

Ask in one message, at most:

1. What was the Sprint Goal, and was it met?
2. Which items are Done (they meet the Definition of Done), and which aren't?
3. Who is coming, and what does each of them care about?
4. What is the Product Goal, and is there a date or a budget tied to it?
5. Has anything changed since the last review: budget, market, people, deadlines?

If the user says "just draft it", give the agenda with [TBC] where the content goes and list what you need from them. Never invent features, attendees or feedback.

## Rules

**Only Done work is shown.** If an item doesn't meet the Definition of Done, it is not shown, not even "nearly there". The Scrum Guide is clear: it returns to the Product Backlog. Say in one line what isn't Done and why, and move on. If a stakeholder is pushing to see it, the honest answer is a date range, not a demo.

**Show the product, not slides.** Use a real environment with realistic data. Better still, hand the keyboard to a stakeholder and let them try the thing they asked for.

**Invite people who will give feedback or make decisions.** Users or people who speak for them, the sponsor or budget holder, people from support, sales or operations who live with the product, and teams with a dependency on yours. Five to ten stakeholders is plenty. If forty people want to watch, record a short demo for them and keep the review a working session.

**Prepare questions, at least one per item shown.** Open questions get useful answers. "Any feedback?" gets silence. Good ones:
- "What would stop you or your team using this tomorrow?"
- "What did you expect to see that isn't here?"
- "If we could build only one more thing toward the Product Goal next sprint, what should it be?"
- "What has changed for you since the last review?"
- "Would you release this as it is? What would you need first?"
- "Who else should see this before we go further?"

**Make room for the world outside the team.** Give a slot to changes in the market, budget, timeline, people and users. A budget cut or a team change is exactly what stakeholders and the Product Owner need to decide about together.

**Show progress toward the Product Goal.** Where the product stands against the goal, as a measure or as scope done, and the forecast as a range. The Product Owner presents it.

**End with Product Backlog changes, made in the room.** Items added, removed, moved up or down. The Product Owner decides the order after hearing everyone, and writes the changes down before people leave.

**It is not a release gate or an acceptance meeting.** Work can be released during the sprint; if it was, bring the usage data. Done means the Definition of Done is met, not that the Product Owner nodded in front of stakeholders.

**Timebox.** Up to 2 hours for a two-week sprint, up to 4 hours for a one-month sprint. Most teams need 60 to 90 minutes. At least a third of the time should be stakeholders talking.

**Agenda for a two-week sprint (90 minutes)**

| Time | Item | Led by |
|------|------|--------|
| 5 min | Why we're here; the Sprint Goal and whether it was met | Product Owner |
| 5 min | Done and not Done, one line each | Product Owner |
| 35 min | Hands-on with the Done work, questions per item | Developers |
| 15 min | What has changed: market, budget, timeline, users | Product Owner, stakeholders |
| 10 min | Progress toward the Product Goal, forecast | Product Owner |
| 15 min | What next: Product Backlog changes | Everyone; Product Owner decides |
| 5 min | Recap of changes and actions | Scrum Master |

## Output

**Prepare mode:**

````markdown
# Sprint [n] Review, [date and time]

**Sprint Goal:** [goal] · **Met:** Yes / Partly / No
**Product Goal:** [goal]
**Invite:** [roles, and why each one]

## Agenda ([n] minutes)
| Time | Item | Led by |
|------|------|--------|

## What we'll show (Done only)
| Item | Shown by | Question to ask |
|------|----------|-----------------|

## Not Done, back to the Product Backlog
| Item | Why | Forecast |
|------|-----|----------|

## Decisions we need from stakeholders
- [Decision, and who can make it]
````

**Write-up mode:**

````markdown
# Sprint [n] Review, [date]

**Attendees:** [names] · **Sprint Goal:** [goal] · **Met:** Yes / Partly / No ([why])

## Done
| Item | Feedback | From |
|------|----------|------|

## Not Done
| Item | Why | Next |
|------|-----|------|

## What has changed outside the team
- [Budget, market, dates, people]

## Product Backlog changes
| Change | Item | Why | Decided by |
|--------|------|-----|------------|
| Added / Removed / Moved up / Moved down | | | |

## Progress toward the Product Goal
[Where we are] · [Forecast range]

## Actions
| # | Action | Owner | Due |
|---|--------|-------|-----|
````

Attribute feedback to a person only when the notes say who said it.

## Example

Input:

```
review fri 20 nov 2pm. goal: policyholders can submit a vet claim with photos from their phone
done: claim form, photo upload, claim status page
not done: auto-check of vet invoices (failed the performance test)
coming: head of claims, 2 claims handlers, support lead
product goal: 80% of pet claims submitted on mobile by end of Q1
```

Output (excerpt):

```markdown
# Sprint Review, Fri 20 Nov 2026, 14:00

**Sprint Goal:** Policyholders can submit a vet claim with photos from their phone · **Met:** Yes
**Product Goal:** 80% of pet claims submitted on mobile by end of Q1

## What we'll show (Done only)
| Item | Shown by | Question to ask |
|------|----------|-----------------|
| Claim form with photo upload | [TBC] | Claims handlers: is a phone photo of a vet invoice readable enough to process? |
| Claim status page | [TBC] | Support lead: which status questions do customers call about most? |

## Not Done, back to the Product Backlog
| Item | Why | Forecast |
|------|-----|----------|
| Auto-check of vet invoices | Failed the performance test, so it doesn't meet the Definition of Done | [TBC] |

## Decisions we need from stakeholders
- Head of claims: launch to a pilot group without the auto-check, or wait for it?
```

## Checks before you hand it over

- Only Done work is in the demo. Everything not Done is listed with a reason and sent back to the Product Backlog.
- The agenda fits the timebox, and at least a third of it is discussion, not presentation.
- There is a slot for changes outside the team and one for Product Backlog changes.
- Questions for stakeholders are specific to the items shown.
- No attendees, feedback or results appear that the user didn't give.
