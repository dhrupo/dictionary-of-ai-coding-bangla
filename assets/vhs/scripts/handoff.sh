#!/usr/bin/env bash
# /handoff writes an artifact so the next session starts smart, not blank.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "%syou>%s /handoff\n" "$CY" "$R"
sleep 1.0
printf "   writing %sdocs/specs/handoff-2026-06-04.md%s %s✓%s\n\n" "$D" "$R" "$GR" "$R"
sleep 1.1

printf "%s$ cat docs/specs/handoff-2026-06-04.md%s\n" "$D" "$R"
sleep 0.7
printf "%s# Handoff%s\n" "$B" "$R"; sleep 0.6
printf "  1. Goal\n"; sleep 0.5
printf "  2. Done (with paths)\n"; sleep 0.5
printf "  3. Remaining\n"; sleep 0.5
printf "  4. Decisions & why\n"; sleep 0.5
printf "  5. Read these files first\n\n"; sleep 0.9

printf "  %snext session starts smart, not blank.%s\n" "$YE" "$R"
sleep 1.6
