#!/usr/bin/env bash
# Called by the /role skill.
#   role.sh            show the current role and the options
#   role.sh <role>     set the role for this project (pm, product, agile-coach, scrum-master)
#   role.sh off        clear the role, keep the project notes
# Always exits 0, because a failing command would abort the /role skill.

. "$(dirname "${BASH_SOURCE[0]}")/lib.sh"

show_options() {
  local r
  echo "AVAILABLE ROLES"
  for r in $PM_ROLES; do
    printf '  /role %-13s %s: %s\n' "$(pm_alias "$r")" "$(pm_label "$r")" "$(pm_summary "$r")"
  done
  printf '  /role %-13s %s\n' "off" "Clear the role (shared skills still work)"
}

show_status() {
  local cur
  cur="$(pm_current_role)"
  if [ -n "$cur" ]; then
    echo "CURRENT ROLE: $(pm_label "$cur") (set $(pm_state_get updated), stored in $PM_STATE_REL)"
    echo
    echo "SKILLS FOR THIS ROLE"
    pm_skill_lines "$cur"
  else
    echo "CURRENT ROLE: none set in this project"
  fi
  echo
  echo "SHARED SKILLS (every role)"
  pm_skill_lines shared
  echo
  show_options
}

write_state() {
  local today tmp
  today="$(date +%Y-%m-%d)"
  mkdir -p "$PM_PROJECT/.claude" || return 1
  if [ ! -f "$PM_STATE" ]; then
    cat > "$PM_STATE" <<EOF
---
role: $1
updated: $today
---

# Project notes for pm-agent

<!-- Anything you write below this comment loads at the start of every
session, together with the role. Keep it short. For example:

Team: 5 developers, 1 designer, 1 QA. Two-week sprints starting Mondays.
Tools: Jira for the backlog, Confluence for docs, Slack #proj-atlas.
Sponsor: Dana Ruiz (COO). Go-live: 30 Mar 2027. -->
EOF
    return
  fi
  tmp="$PM_STATE.tmp.$$"
  if head -n 1 "$PM_STATE" | grep -q '^---'; then
    awk -v r="$1" -v d="$today" '
      NR == 1 { fm = 1; print; next }
      fm && /^role:/ { print "role: " r; sr = 1; next }
      fm && /^updated:/ { print "updated: " d; sd = 1; next }
      fm && /^---/ { if (!sr) print "role: " r; if (!sd) print "updated: " d; fm = 0; print; next }
      { print }
    ' "$PM_STATE" > "$tmp"
  else
    { printf -- '---\nrole: %s\nupdated: %s\n---\n\n' "$1" "$today"; cat "$PM_STATE"; } > "$tmp"
  fi
  mv "$tmp" "$PM_STATE"
}

gitignore_tip() {
  command -v git >/dev/null 2>&1 || return 0
  git -C "$PM_PROJECT" rev-parse --is-inside-work-tree >/dev/null 2>&1 || return 0
  if ! git -C "$PM_PROJECT" check-ignore -q "$PM_STATE_REL" 2>/dev/null; then
    echo
    echo "TIP: $PM_STATE_REL is not git-ignored. If the role is personal, add .claude/*.local.md to .gitignore. If the whole team should share the role and notes, commit it."
  fi
}

input="$*"

if [ -z "$(printf '%s' "$input" | tr -d '[:space:]')" ]; then
  show_status
  exit 0
fi

role="$(pm_normalise "$input")"

if [ -z "$role" ]; then
  echo "UNKNOWN ROLE: \"$input\""
  echo
  show_status
  exit 0
fi

if [ "$role" = "off" ]; then
  if [ -f "$PM_STATE" ]; then
    write_state none
    echo "ROLE CLEARED. Project notes in $PM_STATE_REL are kept. Shared skills still work."
  else
    echo "No role was set in this project, so there was nothing to clear."
  fi
  echo
  show_options
  exit 0
fi

if ! write_state "$role" 2>/dev/null; then
  echo "COULD NOT SAVE: $PM_STATE_REL is not writable. The role applies to this session only."
else
  echo "ROLE SET: $(pm_label "$role")"
  echo "Saved in $PM_STATE_REL. It loads at the start of every session in this project."
fi

case "$(printf '%s' "$input" | tr '[:upper:]' '[:lower:]' | tr -d '[:space:]')" in
  pm) echo "NOTE: \"pm\" means project manager here. For product manager, use /role product." ;;
  po) echo "NOTE: product owners use the product manager role. Backlog and sprint skills are under /role scrum-master." ;;
esac

echo
echo "LENS FOR THIS ROLE (adopt it from now on)"
pm_lens "$role"
echo
echo "SKILLS FOR THIS ROLE"
pm_skill_lines "$role"
echo
echo "SHARED SKILLS (every role)"
pm_skill_lines shared
gitignore_tip
exit 0
