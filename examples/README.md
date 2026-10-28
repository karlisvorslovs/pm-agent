# Examples

Real outputs from PM Agent, each with the prompt that produced it. Nothing here was edited except removing one line where Claude offered a feature of the app it was running in. Names, teams and companies are invented.

| Example | Role | What it shows |
|---------|------|---------------|
| [Switching roles](role-switching.md) | All | `/role` with and without a role name, what gets saved, and the role loading in a new session. |
| [Weekly status report](project-manager-status-report.md) | Project manager | Amber status with evidence per area, slip counted in working days, options and one decision with a date. |
| [Prioritising with RICE](product-manager-prioritise.md) | Product manager | The skill picked from plain wording, every calculation shown, a line drawn at capacity, and a sensitivity check. |
| [A thin PRD request](product-manager-prd-thin-input.md) | Product manager | Five questions instead of an invented PRD. |
| [Team health check read-out](agile-coach-team-health-check.md) | Agile coach | Themes in the team's own words, experiments for the team to choose, and results kept inside the team. |
| [Retro after a missed Sprint Goal](scrum-master-retro.md) | Scrum master | A format chosen for the situation, last retro's actions followed up, and a timed remote plan. |

To reproduce one, set the role with `/role`, paste the prompt, and compare. Your output will differ in wording, because the model writes fresh each time, but the structure and the judgement calls should match.
