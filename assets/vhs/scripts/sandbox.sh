#!/usr/bin/env bash
# A reckless command inside a sandbox stays inside the sandbox. The host is safe.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; RED=$'\e[31m'; YE=$'\e[33m'

sleep 0.5
printf "  %sagent running inside a sandbox 📦%s\n\n" "$D" "$R"
sleep 0.8
printf "%ssandbox\$%s rm -rf /          %s😱%s\n" "$D" "$R" "$YE" "$R"
sleep 0.9
printf "   %s✗ wiped the container's filesystem.%s\n\n" "$RED" "$R"
sleep 1.0

printf "  host machine   %s✓ untouched%s\n" "$GR" "$R"; sleep 0.5
printf "  your files     %s✓ safe%s\n" "$GR" "$R"; sleep 0.5
printf "  secrets        %s✓ never mounted%s\n\n" "$GR" "$R"; sleep 0.7

printf "  %sjust throw the box away and start fresh.%s\n" "$D" "$R"
sleep 1.4
