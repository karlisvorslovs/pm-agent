---
name: impediment-log
description: Create or update an impediment log with ages, triage, owners and escalations. Use when the user mentions impediments, blockers, "what's blocking the team", "update the blocker list", "what needs escalating", or pastes blockers from a standup or retro, or an existing impediment log to bring up to date.
argument-hint: "[paste the blockers, or the current log]"
---

# Impediment log

An impediment is anything that slows the team's progress toward the Sprint Goal and that the team can't remove quickly on its own. The Scrum Guide 2020 makes the Scrum Master accountable for causing their removal. That doesn't mean fixing each one personally: it means making sure each one has an owner, keeps moving, and reaches someone who can decide when it stalls.

A good log shows at a glance what is blocked, for how long, and who is on it. The usual failure is a list that only grows. Items sit for weeks marked "waiting", and the log becomes a record of decisions nobody made.

## Input

Blockers from Daily Scrums, the retrospective or chat, or an existing log to update.

**Look for an existing log first.** Use Glob for `**/*impediment*` and `**/*blocker*`. If you find one, read it and update it in place:
- Keep every existing ID. Never renumber.
- Recalculate every age for today.
- Add new rows with the next free ID.
- Move resolved rows to Closed with the resolved date. Never delete them.

Start a new file only if there is none, or the user asks. Suggest `docs/impediment-log.md` as the path.

Use today's date from the session for ages, and state it at the top of the log. If the user gives an "as of" date, use that instead.

## Ask first when the input is thin

If you have no blockers to log, ask in one message, at most:

1. What are the impediments, roughly when did each start, and what does each one hold up?
2. What is the current Sprint Goal? (To judge impact.)
3. Who is the scrum master, and who do you escalate to outside the team?
4. Is there an existing log or board I should update?

If the user says "just set it up", create the empty log with the columns below and no rows. Never invent impediments, dates or owners.

## Rules

**One row per impediment, one owner.** The owner drives it to resolution, even when someone else does the work. "Platform team" can be who is fixing it; the owner is a person on your side who chases it.

**State the impact against the Sprint Goal.** Use one of three words, then say why:
- **Blocks:** the goal can't be met until this is fixed.
- **Slows:** the goal is still possible, but the team is losing time.
- **None:** no effect on this sprint's goal (log it only if it keeps coming back).

**Age in working days.** Count the working days after the raised date, up to and including today. Raised Mon 16 Nov 2026, today Thu 19 Nov 2026: age 3. Leave out weekends and public holidays.

**Triage every row into one of three groups.**
- **Team can fix.** Inside the team's control: flaky tests, a missing review rota, a skill gap. Owner is a Developer. The scrum master checks it moves.
- **Scrum master fixes.** Needs someone to talk to another team, a manager or a supplier, or to protect the team: people pulled into other work, access requests, too many meetings. Owner is the scrum master.
- **Needs the organisation.** Needs a decision, money or a policy change above the team: licences, hiring, legal sign-off, priorities across departments. Owner is still the scrum master. "Escalated to" names the person who can decide.

**Ageing rules.** Escalation goes one level up: a team item goes to the scrum master, a scrum master item goes to the manager the team escalates to, and an organisation item goes to whoever can decide.
- **0 to 2 working days:** the owner works it.
- **More than 2 working days:** escalate one level. Write who in "Escalated to", and the date you expect an answer in "Next step".
- **More than one sprint (10 working days):** raise it in person with the person who owns the constraint, with the cost in days lost.
- **More than two sprints:** it is now a decision nobody made. Put it to the decision-maker with three options: fix it, fund it, or accept it and stop logging it.

**Escalate with a cost and an ask.** Not "test env is still down". Instead: "Test environment down 3 of the last 4 days. Two Developers can't test, and the Sprint Goal is at risk. We need the platform team to make it their top priority this week, or a decision to drop the consent page from the goal."

**Statuses:** Open, Escalated, Waiting (on a named person, until a date), Resolved, Accepted (decided to live with it).

**Not every problem is an impediment.** A hard bug is work. Log it when the team can't solve it within a day or two, or needs someone outside the team.

**Review it in a fixed rhythm.** The scrum master checks the log after every Daily Scrum. Bring it to the retrospective. Anything past one sprint goes to the escalation manager's next one-to-one or team leads meeting.

## Output

````markdown
# Impediment log: [team]

**As of:** [date] · **Open:** [n] · **Escalated:** [n] · **Oldest open:** [ID], [n] working days
**Sprint Goal:** [goal]

## Needs action today
- **[ID]:** [why it needs action today, and the one thing to do]

## Open

| ID | Impediment | Impact on Sprint Goal | Raised | Age (working days) | Triage | Owner | Escalated to | Status | Next step |
|----|------------|-----------------------|--------|--------------------|--------|-------|--------------|--------|-----------|
| IMP-01 | [What is stuck] | Blocks: [why] | [date] | [n] | [group] | [Name] | [Name, or blank] | [status] | [Verb + what, by date] |

## Closed

| ID | Impediment | Raised | Resolved | Age at close | How it was resolved |
|----|------------|--------|----------|--------------|---------------------|
````

Sort Open by impact (Blocks first), then by age, oldest first. "Needs action today" lists only rows past an ageing threshold or new rows that block the goal. If it is empty, write "Nothing past its threshold today."

## Example

Input:

```
today is wed 25 nov. goal: shoppers can pay with a saved card.
- staging db refresh fails every night since thu 19 nov, means test data is stale, devs work around it. ops team owns it
- card vault sandbox keys still not issued by the payment provider, asked mon 16 nov, can't test saved cards at all
- new: designers can't open the analytics dashboard, raised today
I'm the SM (Rasa), escalations go to Marius, head of engineering
```

Output (excerpt):

```markdown
# Impediment log: Checkout team

**As of:** Wed 25 Nov 2026 · **Open:** 3 · **Escalated:** 2 · **Oldest open:** IMP-02, 7 working days
**Sprint Goal:** Shoppers can pay with a saved card.

## Needs action today
- **IMP-02:** Blocks the goal and is 7 working days old. Rasa to ask Marius to call the provider's account manager today.

## Open
| ID | Impediment | Impact on Sprint Goal | Raised | Age (working days) | Triage | Owner | Escalated to | Status | Next step |
|----|------------|-----------------------|--------|--------------------|--------|-------|--------------|--------|-----------|
| IMP-02 | Payment provider hasn't issued card vault sandbox keys | Blocks: saved cards can't be tested | Mon 16 Nov 2026 | 7 | Needs the organisation | Rasa | Marius | Escalated | Marius to call the provider by Thu 26 Nov 2026 |
| IMP-01 | Nightly staging database refresh fails | Slows: test data is stale, Developers work around it | Thu 19 Nov 2026 | 4 | Scrum master fixes | Rasa | Marius | Escalated | Marius to get a fix date from the ops team lead by Thu 26 Nov 2026 |
| IMP-03 | Designers can't open the analytics dashboard | None: no effect on this sprint's goal | Wed 25 Nov 2026 | 0 | Scrum master fixes | Rasa | | Open | Request access for the designers today |
```

The IDs here are new because there was no log in the project. If there had been one, the existing IDs would have stayed.

## Checks before you hand it over

- You looked for an existing log first. Existing IDs are unchanged and closed rows are kept.
- Every age runs from the raised date to the stated "as of" date, in working days.
- Every row older than two working days is escalated one level, or says why not.
- Each row has one owner, a triage group and a next step that starts with a verb.
- No impediments, dates or names appear that the user didn't give.
