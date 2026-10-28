# Changelog

All notable changes to PM Agent are listed here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow [Semantic Versioning](https://semver.org/).

## [Unreleased]

## [1.0.0] - 2026-10-28

First public release.

### Added

- `/role` to switch between project manager, product manager, agile coach and scrum master, or to show the current role. The role is saved per project in `.claude/pm-agent.local.md`, with room for project notes.
- A SessionStart hook that loads the saved role and notes at the start of each session. It prints nothing when no role is set.
- Four role agents (`pm-agent:project-manager`, `pm-agent:product-manager`, `pm-agent:agile-coach`, `pm-agent:scrum-master`) that double as the lens `/role` loads.
- Project manager skills: `/project-charter`, `/wbs-schedule`, `/raid-log`, `/status-report`, `/stakeholder-plan`, `/change-request`, `/lessons-learned`.
- Product manager skills: `/prd`, `/user-stories`, `/prioritise`, `/roadmap`, `/discovery-interview`, `/metrics-tree`, `/launch-plan`, `/competitor-teardown`.
- Agile coach skills: `/team-health-check`, `/maturity-assessment`, `/working-agreements`, `/coaching-conversation`, `/workshop-design`, `/transformation-roadmap`.
- Scrum master skills: `/sprint-planning`, `/backlog-refinement`, `/standup`, `/sprint-review`, `/retro`, `/impediment-log`, `/sprint-metrics`, `/definition-of-done`.
- Shared skills: `/meeting-actions`, `/decision-log`, `/stakeholder-update`, `/risk-check`.
- Eval cases for every skill, runnable with `claude plugin eval`.
- Example outputs in `examples/`.

[Unreleased]: https://github.com/karlisvorslovs/pm-agent/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/karlisvorslovs/pm-agent/releases/tag/v1.0.0
