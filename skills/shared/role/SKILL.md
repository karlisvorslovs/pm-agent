---
name: role
description: Switch the PM Agent role or show the current one. Use when the user types /role, with or without a role name.
argument-hint: "[pm | product | agile-coach | scrum-master | off]"
disable-model-invocation: true
allowed-tools: Bash(bash "${CLAUDE_PLUGIN_ROOT}/scripts/role.sh" *)
---

# Role

!`bash "${CLAUDE_PLUGIN_ROOT}/scripts/role.sh" $ARGUMENTS`

The block above is the output of the PM Agent role script. It has already saved any change, so do not write any files yourself. Answer the user from that output, using the case that matches its first word.

## ROLE SET

1. One line: "Role set to [role]. It is saved for this project and loads in every new session."
2. If there is a NOTE line, add it as one short line.
3. A table of the role's skills: `Command | What it does`, using the first sentence of each description.
4. One line listing the shared skills by command name.
5. One line suggesting a first thing to try that fits the role. For example, for a scrum master: "Try /sprint-planning, or paste last sprint's numbers and ask how it went."
6. If there is a TIP line, add it at the end as a short note.

Then work through the lens in that output for the rest of this conversation. Do not repeat the lens back to the user.

## CURRENT ROLE

Show the current role in one line, then its skills as a table (skip this if no role is set), the shared skills in one line, and the options as a table: `Command | Role | Good for`. Finish with: "Switch with /role followed by a role name."

## UNKNOWN ROLE

Say the name was not recognised, show the options table, and suggest the closest match. Nothing was saved.

## ROLE CLEARED, or no role was set

Confirm in one line and show the options table.

## COULD NOT SAVE

Say the role applies to this session only because the file could not be written, and show the path from the output so the user can check its permissions. Then follow the ROLE SET steps.

Keep the whole reply under 30 lines. No preamble, no closing summary.
