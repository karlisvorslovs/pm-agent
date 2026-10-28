#!/usr/bin/env bash
# SessionStart hook. If this project has a pm-agent role, load its lens and the
# user's project notes into the session. Prints nothing when no role is set.

. "$(dirname "${BASH_SOURCE[0]}")/lib.sh"

role="$(pm_current_role)"
[ -n "$role" ] || exit 0

echo "pm-agent: the active role in this project is $(pm_label "$role") (set with /role, stored in $PM_STATE_REL)."
echo "Use the lens below for project, product and team work in this session. For unrelated tasks, such as writing code, work as you normally would."
echo
pm_lens "$role"
echo
echo "Skills for this role: $(pm_skill_names "$role")"
echo "Shared skills: $(pm_skill_names shared)"

notes="$(pm_notes | head -c 3000)"
if [ -n "$(printf '%s' "$notes" | tr -d '[:space:]')" ]; then
  echo
  echo "Project notes from the user ($PM_STATE_REL):"
  printf '%s\n' "$notes"
fi
exit 0
