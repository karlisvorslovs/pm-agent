---
name: definition-of-done
description: Draft or review a team's Definition of Done and Definition of Ready as paste-ready checklists. Use when the user mentions a Definition of Done or DoD, a Definition of Ready or DoR, "when is a story done", "our stories keep bouncing back", "quality keeps slipping", or pastes a current DoD or DoR to review, or wants a checklist for Jira or Confluence.
argument-hint: "[paste your current DoD or DoR, or describe the team and how it releases]"
---

# Definition of Done and Definition of Ready

The Definition of Done is the quality bar every Increment meets. In the Scrum Guide 2020 it is the commitment for the Increment: work that doesn't meet it is not part of the Increment, can't be released and isn't shown at the Sprint Review. The Definition of Ready is optional and isn't in the Scrum Guide. It is a team agreement about when an item is clear enough to bring into Sprint Planning.

A good DoD is short enough to remember, checked on every item, and tightened over time. The usual failures: a DoD so vague it means nothing ("tested"), one written once and never looked at again, and a DoR that has grown into a stage gate that bounces work back to the Product Owner.

## Input

The current DoD or DoR if there is one, what the team builds, how often it releases, the checks it runs today, company standards, and the problem that made them ask (bugs reaching users, work bouncing back, a release crunch).

Look for existing versions in the project with Glob (`**/*definition-of-done*`, `**/*dod*`, `**/*definition-of-ready*`, `**/*working-agreement*`) and read them first. Review those rather than starting over.

## Ask first when the input is thin

Ask in one message, at most:

1. What does the team build (web, mobile, API, data, something else), and how often does it release?
2. Do you have a DoD or DoR today? Paste it.
3. Which checks exist now: code review, automated tests, CI, security scans, accessibility checks?
4. Are there company standards every team must meet, for security, compliance or accessibility?
5. What is going wrong that made you ask?

If the user says "just draft it", give a starting DoD and DoR marked "draft for the team to agree", with [TBC] wherever a threshold or tool depends on their setup, and list your assumptions. Never present a tool, environment or threshold as the team's existing practice unless they told you.

## Rules

**The team agrees it; you draft it.** The Developers must conform to the DoD, so they write the final version, usually at a retrospective. Your draft is a starting point for that conversation.

**The organisation's DoD is the minimum.** If the company has one, the team's DoD includes it and may add to it. Several teams working on one product share one DoD.

**Every line is checkable.** "Tested" fails. "Unit tests cover the new logic and pass in CI" works. Someone outside the team should be able to answer yes or no for each line.

**Use three levels, and shrink the last one.** The Scrum Guide has one DoD, for the Increment. In practice it helps to separate:
- **Item:** every Product Backlog item meets this before anyone calls it Done.
- **Increment:** the integrated product meets this at least once per sprint.
- **Release:** checks that still happen only before a release, such as a pen test, a legal review or an app store submission.

Everything at release level is undone work and hidden risk: it is the gap between "Done" and "usable by customers". Aim to move one release-level check down into the Increment or item level every quarter.

**Five to ten lines per level.** More than that and nobody reads it. Pick the checks that fit the product:

| Area | Checkable line (adapt the numbers) |
|------|------------------------------------|
| Code review | At least one other Developer has reviewed and approved the change |
| Automated tests | Unit tests cover new logic; all existing tests pass in CI; key user journeys have an end-to-end test |
| Security | Dependency scan shows no new high or critical findings; no secrets in the code; user input is validated |
| Accessibility | New or changed screens meet WCAG 2.2 AA; usable with keyboard only; labelled for screen readers; automated accessibility check shows no serious issues |
| Documentation | API docs, help text or runbook updated where behaviour changed |
| Deployed to an environment | Running in the shared test or staging environment, not only on a laptop; feature flag noted if it's behind one |
| Acceptance criteria | Met, and checked by someone other than the author |
| Performance | Within the team's agreed budget, for example [TBC] seconds page load on mobile |

**The DoR has five criteria, rarely more than seven.**
1. Clear value: who it is for and why it matters.
2. Acceptance criteria a tester could check.
3. Dependencies known, and either resolved or with a date.
4. Small enough to finish within one sprint.
5. Estimated by the Developers, if the team estimates.

Add "designs attached" only when the item changes a screen.

**A DoR must not become a stage gate.** Signs it has: more than about seven criteria; sign-offs from people outside the Scrum Team; items bounce back to the Product Owner; the Developers won't discuss an item until it is fully specified; nothing is ever ready. Fix: cut it back to the five above, treat it as a checklist for the refinement conversation, and let the Developers take an item that is nearly ready when they agree the gap is small. The Scrum Guide's own test is simpler still: can the team get it Done within one sprint?

**When reviewing, say what to cut and where it goes.** For each line you drop or move, give the reason: "Architect review: move into refinement as a question when an item changes the architecture. It doesn't need to gate every item."

**Review the DoD regularly.** Look at it at a retrospective every three or four sprints, and straight after a bug reaches users. Tighten it, never quietly loosen it. If a line is dropped, write down why.

**Paste-ready checklists.** Give each list as Markdown task items (`- [ ] ...`). Most tools that accept Markdown show them as checkboxes, and where a tool doesn't, they still read as a list. Offer to format it as a Jira issue template or a Confluence page.

## Output

````markdown
# Definition of Done: [team or product]

Agreed: [date] · Next review: [date]

## Item
- [ ] [Checkable line]

## Increment (at least once per sprint)
- [ ] [Checkable line]

## Release (undone work: shrink this list)
- [ ] [Checkable line]

# Definition of Ready: [team]

A checklist for the refinement conversation, not a gate. The Developers can take an item that isn't fully ready when they agree the gap is small.

- [ ] Clear value: who it is for and why
- [ ] Acceptance criteria a tester could check
- [ ] Dependencies known, and resolved or dated
- [ ] Small enough to finish within one sprint
- [ ] Estimated by the Developers

## Review notes (review mode only)
| Current line | Problem | Change |
|--------------|---------|--------|
````

## Example

Input: "Review our DoD. It's 'code complete, tested, PO happy'. We're 5 people on a booking web app. PRs are reviewed, and merges deploy to staging. Release every second Thursday. Last month a bug in the cancellation flow reached customers."

Output (excerpt):

```markdown
## Review notes
| Current line | Problem | Change |
|--------------|---------|--------|
| Code complete | Nobody can check it | Replace with "reviewed and approved by another Developer" and "merged and deployed to staging" |
| Tested | Doesn't say how | "Unit tests cover new logic and pass in CI; the booking and cancellation journeys have an end-to-end test" |
| PO happy | Acceptance, not quality; varies by mood | "Acceptance criteria met and checked by someone other than the author" |

# Definition of Done: Booking web app (draft for the team to agree)

## Item
- [ ] Reviewed and approved by another Developer
- [ ] Unit tests cover new logic and pass in CI
- [ ] Acceptance criteria met and checked by someone other than the author
- [ ] Merged and deployed to staging

## Increment (at least once per sprint)
- [ ] End-to-end tests for booking and cancellation pass on staging
- [ ] [TBC: accessibility and security checks, once we know what you run today]
```

## Checks before you hand it over

- Every line is checkable by someone outside the team.
- The DoD separates item, Increment and release, and the release list is called out as undone work.
- The DoR has five to seven criteria, and the stage-gate warning is in the output.
- Checklists are Markdown task items, ready to paste.
- No tool, standard or threshold is presented as the team's own unless the user gave it. Suggestions are marked as suggestions.
