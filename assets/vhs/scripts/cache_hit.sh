#!/usr/bin/env bash
# Stable prefix -> cache hit (cheap); editing AGENTS.md -> cache miss (expensive).
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; RED=$'\e[31m'; YE=$'\e[33m'

sleep 0.5
printf "  %sturn 1%s  prefix [system + AGENTS.md] processed\n" "$B" "$R"; sleep 1.0
printf "          %s-> cached%s\n\n" "$D" "$R"; sleep 1.0

printf "  %sturn 2%s  same prefix -> cache hit %s✓%s\n" "$B" "$R" "$GR" "$R"; sleep 0.9
printf "          %scheap, fast%s\n\n" "$D" "$R"; sleep 1.2

printf "  edited AGENTS.md -> prefix changed\n"; sleep 1.0
printf "  cache miss %s✗%s  full re-process %s(expensive)%s\n" "$RED" "$R" "$YE" "$R"
sleep 1.6
