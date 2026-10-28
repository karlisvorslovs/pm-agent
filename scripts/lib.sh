# Shared helpers for role.sh and session-start.sh. Sourced, not run.
# Plain bash, sed and awk only, so it works on macOS, Linux and Git Bash on Windows.

PM_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PM_PROJECT="${CLAUDE_PROJECT_DIR:-$PWD}"
PM_STATE_REL=".claude/pm-agent.local.md"
PM_STATE="$PM_PROJECT/$PM_STATE_REL"
PM_ROLES="project-manager product-manager agile-coach scrum-master"

# Map whatever the user typed to a role slug, "off", or "" if unknown.
pm_normalise() {
  local a
  a="$(printf '%s' "$*" | tr '[:upper:]' '[:lower:]' | tr ' _' '--' | tr -cd 'a-z-')"
  case "$a" in
    pm|pjm|project|project-manager|projectmanager|project-management|delivery|delivery-manager) echo project-manager ;;
    product|prod|pdm|po|product-manager|productmanager|product-owner|productowner|product-management) echo product-manager ;;
    coach|agile|ac|agile-coach|agilecoach|agile-coaching) echo agile-coach ;;
    sm|scrum|scrum-master|scrummaster) echo scrum-master ;;
    off|none|clear|reset|unset|no-role) echo off ;;
    *) echo "" ;;
  esac
}

pm_label() {
  case "$1" in
    project-manager) echo "Project manager" ;;
    product-manager) echo "Product manager" ;;
    agile-coach) echo "Agile coach" ;;
    scrum-master) echo "Scrum master" ;;
    *) echo "none" ;;
  esac
}

pm_alias() {
  case "$1" in
    project-manager) echo "pm" ;;
    product-manager) echo "product" ;;
    agile-coach) echo "agile-coach" ;;
    scrum-master) echo "scrum-master" ;;
  esac
}

pm_summary() {
  case "$1" in
    project-manager) echo "charters, schedules, RAID logs, status reports, change control" ;;
    product-manager) echo "PRDs, user stories, prioritisation, roadmaps, discovery, launches" ;;
    agile-coach) echo "health checks, maturity, working agreements, coaching, workshops" ;;
    scrum-master) echo "sprint events, refinement, retros, impediments, sprint metrics" ;;
  esac
}

# Print one frontmatter value from the state file, or nothing.
pm_state_get() {
  [ -f "$PM_STATE" ] || return 0
  awk -v key="$1" '
    NR == 1 && /^---[[:space:]]*$/ { fm = 1; next }
    fm && /^---[[:space:]]*$/ { exit }
    fm && $0 ~ "^" key ":" { sub("^" key ":[[:space:]]*", ""); gsub(/["\r]/, ""); gsub(/[[:space:]]+$/, ""); print; exit }
  ' "$PM_STATE"
}

pm_current_role() {
  local r
  r="$(pm_state_get role)"
  case " $PM_ROLES " in
    *" $r "*) echo "$r" ;;
    *) echo "" ;;
  esac
}

# The role lens is the body of the matching agent file, without its frontmatter.
pm_lens() {
  awk 'NR == 1 && /^---/ { fm = 1; next } fm && /^---/ { fm = 0; next } !fm' "$PM_ROOT/agents/$1.md" | sed -e '/./,$!d'
}

# "- /name  First sentence of the description." for every skill in a group.
pm_skill_lines() {
  local f name desc
  for f in "$PM_ROOT/skills/$1"/*/SKILL.md; do
    [ -f "$f" ] || continue
    name="$(basename "$(dirname "$f")")"
    [ "$name" = "role" ] && continue
    desc="$(sed -n 's/^description:[[:space:]]*//p' "$f" | head -n 1 | sed 's/\. .*$/./')"
    printf -- '- /%s  %s\n' "$name" "$desc"
  done
}

# "/a, /b, /c" for every skill in a group.
pm_skill_names() {
  local f out=""
  for f in "$PM_ROOT/skills/$1"/*/SKILL.md; do
    [ -f "$f" ] || continue
    f="$(basename "$(dirname "$f")")"
    [ "$f" = "role" ] && continue
    out="$out${out:+, }/$f"
  done
  printf '%s\n' "$out"
}

# The user's own project notes: the state file body, minus HTML comments.
pm_notes() {
  [ -f "$PM_STATE" ] || return 0
  awk '
    NR == 1 && /^---/ { fm = 1; next }
    fm && /^---/ { fm = 0; next }
    fm { next }
    {
      line = $0
      while (1) {
        if (c) { i = index(line, "-->"); if (!i) { line = ""; break } line = substr(line, i + 3); c = 0 }
        i = index(line, "<!--"); if (!i) break
        rest = substr(line, i + 4); j = index(rest, "-->")
        if (j) { line = substr(line, 1, i - 1) substr(rest, j + 3) } else { line = substr(line, 1, i - 1); c = 1; break }
      }
      if (line ~ /^# Project notes for pm-agent/) next
      print line
    }
  ' "$PM_STATE" | sed -e '/./,$!d' | awk 'NF { blank = 0; print; next } !blank { blank = 1; print }'
}
