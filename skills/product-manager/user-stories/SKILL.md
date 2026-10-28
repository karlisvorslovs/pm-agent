---
name: user-stories
description: Break a feature or epic into small user stories with Given/When/Then acceptance criteria. Use when the user asks for user stories, wants an epic broken down or a big story split, needs acceptance criteria, says "write the tickets for this", "make this Jira-ready" or "backlog items for", or pastes a PRD or design and asks what the team should build first.
argument-hint: "[feature or epic, or paste a PRD, design notes or an oversized story]"
---

# User stories

A good story is a thin vertical slice: something a user can do, or a test can prove, that the team can finish in a few days and ship on its own. A good set of stories lets the team deliver the most valuable slice first and stop at any point with something that works.

The usual failure is splitting by technical layer ("build the API", "build the screen"), so nothing is usable until every story is done. The second is acceptance criteria that repeat the story in other words instead of saying exactly what must be true.

## Input

An epic, a PRD, a feature description, designs, or one story that is too big. Look for a PRD or design notes in the project with Glob first (for example `**/*prd*.md`) and take the users, rules and scope from there. Check the project notes for the team's conventions: Jira project key, estimation scale, sprint length, Definition of Done.

## Ask first when the input is thin

In one message, at most:

1. Who are the users, and is there more than one type (for example an admin and a member)?
2. What can they do once this ships that they can't do today?
3. What is in the first release, and what is explicitly out?
4. Which business rules apply: limits, permissions, cut-off times, regulation?
5. Which platforms (web, iOS, Android, API), and how does the team estimate?

Infer users and rules from a PRD or designs if there are any. If the user says "just draft it", write the stories with [TBC] for every rule you don't know, and list the assumptions at the end. Never invent a business rule, limit or number and present it as fact. Acceptance criteria often seem to need a number, such as "within 5 minutes". If the input doesn't give one, write [TBC] instead of a plausible guess.

## Rules

- **Format:** "As a [specific user], I want [action] so that [outcome]." The user is a real role ("finance admin", "returning customer"), never "user" or "the system". If the "so that" repeats the "I want", the why is missing.
- **Slice vertically.** Every story touches every layer it needs to be usable: interface, logic and data. Never write separate front end and back end stories.
- **Run the INVEST check on every story.** Independent: can be built in any order, or the dependency is named. Negotiable: describes the need, not the implementation. Valuable: a user or the business notices when it ships. Estimable: the team knows enough to size it. Small: a few days of work, never more than half a sprint. Testable: each criterion can pass or fail. A story that fails Small or Estimable gets split. On a Fibonacci scale, anything the team sizes at 13 or more gets split.
- **Pick a splitting pattern and name it.** Try them roughly in this order:

| Pattern | Use when | Example |
|---------|----------|---------|
| Workflow steps | The feature is a sequence | Request leave, approve it, see it in the calendar: three stories |
| Business rule variations | Rules differ by case | Pause before the weekly cut-off, then after it |
| Data variations | Data types or sources differ | One currency first, then several |
| Happy and unhappy paths | Failure handling is real work | Card accepted, then card declined |
| CRUD | The feature manages a thing | Create, view, edit, delete a saved address |
| Interface | Several channels or devices | Web first, then mobile, then the support agent's tool |
| Spike | Too uncertain to estimate | Time-boxed to one to three days. The output is an answer, not shipped code |

- **Three to seven acceptance criteria per story, in Given/When/Then.** One behaviour per scenario. Use concrete values ("Given the time is 23:58 on Wednesday"), not vague ones ("Given it is close to the cut-off"). At least one criterion covers an unhappy path. More than seven usually means the story should be split.
- **List the edge cases that apply,** chosen from: empty state; zero, one and many items; maximum limits; permissions; two people editing at once; timeouts and lost connection; time zones and daylight saving; duplicates; undo; translation and long text. Don't paste the whole list. Turn the important ones into acceptance criteria. If the input doesn't say how an edge case should behave (for example, what happens to a cancelled subscription), don't decide it: add it to Open questions for the Product Owner, or write the criterion with [TBC].
- **Non-functional requirements carry numbers.** Performance ("p95 response under 500 ms"), accessibility (WCAG 2.2 AA), security and privacy (who can see what, personal data), audit logging, supported browsers and devices. If one applies to every story, put it in the epic's Definition of Done instead of repeating it. Unknown values are [TBC].
- **Write out of scope on the epic.** Anything a reader might assume is included, with one line on why it's out.
- **Don't estimate for the team.** Leave story points blank unless the user gives them. Sizing is the team's call.
- **Order the stories so the first is the smallest thing worth shipping.** Name dependencies in the story map.

## Output

````markdown
# Epic: [name]

**Goal:** [outcome, one sentence] · **Users:** [types] · **Source:** [PRD or link]

## Story map
| ID | Story | Split pattern | Suggested priority | Depends on |
|----|-------|---------------|--------------------|------------|
| 1 | [short summary] | [pattern] | Must / Should / Could | [ID or none] |

## Stories

### 1. [Summary, under 80 characters]
**Story:** As a [user], I want [action] so that [outcome].

**Acceptance criteria**
```gherkin
Scenario: [name]
  Given [context with concrete values]
  When [action]
  Then [observable result]
```

**Edge cases:** [the ones that apply]
**Non-functional:** [with numbers, or "See Definition of Done"]
**Notes:** [designs, rules, open questions]
**Estimate:** [team to estimate]
**INVEST:** I [Y/N] · N [Y/N] · V [Y/N] · E [Y/N] · S [Y/N] · T [Y/N]

## Definition of Done additions for this epic
- [Non-functional requirement with a number]

## Out of scope
- [Item]: [why]

## Open questions
- [Question] (answer from: [name], by [date])

## Assumptions
- [Only when you drafted with gaps]
````

After the stories, offer once: "Want these as a CSV for Jira import (Summary, Issue Type, Description, Parent), or one block per ticket to paste?"

## Example

Input:

```
epic: let Forkful customers pause their meal kit subscription. pause 1 to 4 weeks. cut-off for next week's box is wed 23:59 UK time. can't pause if last payment failed. can resume early. CS agents need to pause for customers too. not doing skipping single meals.
```

Output (excerpt):

````markdown
## Story map
| ID | Story | Split pattern | Suggested priority | Depends on |
|----|-------|---------------|--------------------|------------|
| 1 | Subscriber pauses next week's box | Data variations (one week first) | Must | None |
| 2 | Subscriber pauses for two to four weeks | Data variations | Must | 1 |
| 3 | Pause is blocked when the last payment failed | Happy and unhappy paths | Must | 1 |
| 4 | Subscriber resumes early | CRUD | Should | 1 |
| 5 | Support agent pauses for a customer | Interface | Should | 2 |

### 1. Subscriber pauses next week's box
**Story:** As a subscriber, I want to pause next week's box so that I don't receive or pay for food I won't use.

**Acceptance criteria**
```gherkin
Scenario: Pause before the cut-off
  Given an active subscription and the time is 23:58 UK time on Wednesday
  When I pause for one week
  Then next week's box is not sent and I am not charged for it

Scenario: Pause after the cut-off
  Given an active subscription and the time is 00:01 UK time on Thursday
  When I try to pause for one week
  Then I see that next week's box will still be delivered and charged
  And the pause applies from the following week [TBC: confirm with operations]
```

**Edge cases:** the cut-off on a night the clocks change [TBC: confirm the rule follows UK local time].
**Estimate:** [team to estimate]

## Out of scope
- Skipping single meals within a box: agreed out of this epic.
````

## Checks before you hand it over

- No story is split by technical layer, and each one could ship on its own.
- Every story has three to seven Given/When/Then criteria with concrete values, including at least one unhappy path.
- Every rule, limit and number comes from the input or is marked [TBC].
- Out of scope is written down, and no story points were invented.
- The first story is the smallest one worth shipping.
