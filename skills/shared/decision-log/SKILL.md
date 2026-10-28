---
name: decision-log
description: Record a decision in a decision log, or start or review one. Use when the user says "log this decision", "we decided", "add to the decision log", "why did we decide", asks for an ADR or a decision record, or wants to stop the team reopening the same argument.
argument-hint: "[describe the decision, or 'review' to check the log]"
---

# Decision log

Teams forget why they decided things much faster than they forget what they decided. Six weeks later someone new asks "why don't we just use Vendor A?", nobody remembers the reasons, and the argument starts again. A decision log stops that. Each entry takes five minutes and saves hours.

The usual failures: logging topics instead of decisions, leaving out the options that lost and why, and not saying who had the authority to decide. A record without those three is a diary entry.

## Input

The user describes a decision in their own words, pastes a thread or meeting notes, or asks to review the log. Before you write anything, look for an existing log with Glob, for example `**/*decision*log*.md`, `**/decisions/*.md` or `**/adr/*.md`. If you find one, read it, follow its format and numbering, and add to it. Only start a new file if there is none, and ask where to put it (suggest `docs/decision-log.md`).

## Ask first when the input is thin

Ask in one message, at most:

1. What exactly was decided? (One sentence someone could act on.)
2. Who made the call: a person, or a group such as the steering group or the team?
3. What other options were considered, and why did they lose?
4. Is it easy to reverse, and is there a date or an event that should make us look at it again?

If the user pasted a thread or notes, take what you can from them and only ask about what is missing. If the decision is not actually made yet, record it with status "Proposed" and say so.

## Rules

- **One decision per entry.** If the user describes three, write three entries.
- **Write the decision as an action.** "Use Postgres for the reporting store" beats "Database discussion".
- **Keep the losing options.** List each option with the reason it lost. This is the part people need later.
- **Name the authority.** Who decided, and in what forum. "Agreed by the team" is fine for team decisions; budget and scope calls usually need a named person.
- **Say how reversible it is.** A two-way door (cheap to undo) needs a short entry. A one-way door (expensive or impossible to undo) needs the full entry and a named approver.
- **Give it a revisit trigger.** A date ("review 1 Mar 2027") or an event ("if usage passes 10,000 users").
- **Never edit an old decision.** When a decision changes, add a new entry and mark the old one "Superseded by D-014". The history is the point.
- **Match the active role.** A project manager links decisions to change requests and the RAID log. A product manager links them to the PRD or the metric they affect. A scrum master or coach usually logs team-level decisions, such as a change to the Definition of Done or a working agreement.

## Output

Add a row to the index table and a full entry below it. If you are starting a new file, include the heading and the index table.

````markdown
# Decision log: [project or team]

| ID | Date | Decision | Decided by | Status | Revisit |
|----|------|----------|------------|--------|---------|
| D-001 | [date] | [one line] | [name or forum] | Decided | [date or trigger] |

---

## D-001: [Decision as an action]

- **Date:** [date]
- **Status:** Proposed | Decided | Superseded by D-[n]
- **Decided by:** [name, role or forum]
- **Consulted:** [names]
- **Reversibility:** Two-way door | One-way door

**Context.** [Two to four sentences: the problem and the constraint that forced a decision now.]

**Options considered**
1. **[Chosen option]** (chosen): [why it won]
2. **[Option]:** [why it lost]
3. **[Option]:** [why it lost]

**What changes.** [What people will do differently, and any follow-up actions with owners.]

**Revisit.** [Date or trigger.]

**Links.** [Thread, ticket, meeting notes.]
````

## Review mode

When the user asks to review the log, read it and return:

- Decisions whose revisit date has passed or whose trigger may have happened.
- Entries with no owner, no options or no status.
- Decisions that seem to contradict each other.

Keep the review to a short list with the decision ID for each point.

## Example

Input: "Log it: we're going with Stripe over Adyen for the new checkout. Mia (CFO) signed it off on Thursday. Adyen was cheaper at our volume but needs 3 months of integration and we launch in February. Look again if we pass 2 million a month in card volume."

Output (entry only):

```markdown
## D-007: Use Stripe as the payment provider for the new checkout

- **Date:** Thu 22 Oct 2026
- **Status:** Decided
- **Decided by:** Mia [surname TBC], CFO
- **Consulted:** [TBC]
- **Reversibility:** One-way door for this launch. Switching later means a new integration.

**Context.** The new checkout launches in February 2027 and needs a payment provider now. Integration time is the binding constraint.

**Options considered**
1. **Stripe** (chosen): can be integrated before the February launch.
2. **Adyen:** cheaper at our volume, but about three months of integration puts the launch at risk.

**What changes.** Engineering starts the Stripe integration. [Owner and date TBC]

**Revisit.** If monthly card volume passes 2 million [currency TBC], compare fees again.
```

## Checks before you hand it over

- The decision is one sentence someone could act on.
- At least one losing option is recorded with its reason, or you asked for it.
- The decider and the revisit trigger are filled in or marked [TBC].
- The ID follows the existing log's numbering, and no old entry was edited except to mark it superseded.
