#!/usr/bin/env bash
# A subagent does the heavy grinding and returns a summary; main stays light.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "  main session: %s12k tokens%s %s(light ✓)%s\n\n" "$B" "$R" "$GR" "$R"; sleep 1.0

printf "  %s→ subagent: search 300 files for usages...%s\n" "$CY" "$R"; sleep 0.9
printf "     %sgrep auth.js ... 41 files%s\n" "$D" "$R"; sleep 0.6
printf "     %sgrep login() ... 12 hits%s\n" "$D" "$R"; sleep 0.6
printf "     %sreading, filtering...%s\n\n" "$D" "$R"; sleep 1.0

printf "  %s← returns 3-line summary%s\n\n" "$CY" "$R"; sleep 1.0
printf "  main session: still %s13k tokens%s -- focus intact 🧹\n" "$B" "$R"
sleep 1.6
