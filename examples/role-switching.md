# Switching roles with /role

`/role` with no argument shows the current role and the options. With a role name, it saves the role for the project and lists that role's skills. These are real outputs from Claude Code 2.1.310.

## `/role` in a project with no role set

No role is set for this project yet. The shared skills (/decision-log, /meeting-actions, /risk-check, /stakeholder-update) work with or without one.

| Command | Role | Good for |
|---|---|---|
| /role pm | Project manager | Charters, schedules, RAID logs, status reports, change control |
| /role product | Product manager | PRDs, user stories, prioritisation, roadmaps, discovery, launches |
| /role agile-coach | Agile coach | Health checks, maturity, working agreements, coaching, workshops |
| /role scrum-master | Scrum master | Sprint events, refinement, retros, impediments, sprint metrics |
| /role off | None | Clears the role |

Switch with /role followed by a role name.

## `/role sm`

Role set to Scrum master. It is saved for this project and loads in every new session.

| Command | What it does |
|---|---|
| /backlog-refinement | Prepare and run backlog refinement, marking each item ready, not ready or needing a split. |
| /definition-of-done | Draft or review a team's Definition of Done and Definition of Ready as paste-ready checklists. |
| /impediment-log | Create or update an impediment log with ages, triage, owners and escalations. |
| /retro | Plan or write up a sprint retrospective with a fitting format and at most three owned actions. |
| /sprint-metrics | Read out velocity, say/do, carry-over, scope change and burndown from pasted sprint data. |
| /sprint-planning | Prepare and run Sprint Planning with capacity, a velocity range, a Sprint Goal and a forecast. |
| /sprint-review | Plan and write up a Sprint Review as a working session with stakeholders, not a demo show. |
| /standup | Facilitate or fix a Daily Scrum, or summarise one into blockers and follow-ups. |

Shared skills: /decision-log, /meeting-actions, /risk-check, /stakeholder-update.

Try /sprint-planning, or paste last sprint's numbers and ask how it went.

## `/role pm`

Role set to Project manager. It is saved for this project and loads in every new session.
"pm" means project manager here. For product manager, use /role product.

| Command | What it does |
|---|---|
| /change-request | Write a change request with impacts, options including "do nothing", and the right approver. |
| /lessons-learned | Plan a lessons learned session, or write up its results as reusable rules with owned actions. |
| /project-charter | Draft a project charter with objectives, scope, milestones, budget, governance and risks. |
| /raid-log | Create or update a RAID log of risks, assumptions, issues and dependencies, scored and owned. |
| /stakeholder-plan | Build a stakeholder register, power/interest grid, engagement plan and communications plan. |
| /status-report | Write a one-page weekly project status report with RAG, milestones, risks and decisions needed. |
| /wbs-schedule | Build a work breakdown structure and schedule with estimates, dependencies and critical path. |

Shared skills: /decision-log, /meeting-actions, /risk-check, /stakeholder-update.

Try /status-report, or paste this week's notes and ask for a RAG status with the decisions you need.

## What gets saved

`/role` writes `.claude/pm-agent.local.md` in the project folder:

```markdown
---
role: scrum-master
updated: 2026-10-28
---

# Project notes for pm-agent

<!-- Anything you write below this comment loads at the start of every
session, together with the role. Keep it short. ... -->
```

The next time Claude Code starts in that folder, a SessionStart hook reads this file and loads the role. Asked "which role is active, and what timeboxes do you follow?" in a brand new session, Claude answered:

> The active pm-agent role in this project is **Scrum master**, and for a two-week sprint I hold the Sprint Review to **2 hours at most** and the Daily Scrum to **15 minutes**.
