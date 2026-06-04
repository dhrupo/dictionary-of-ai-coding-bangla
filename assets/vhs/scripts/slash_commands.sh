#!/usr/bin/env bash
# A slash command never reaches the model. The harness intercepts and runs it.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "%syou>%s /compact\n" "$CY" "$R"
sleep 1.0
printf "   %s-> handled by the harness, not the model%s\n\n" "$D" "$R"
sleep 1.2

printf "   compacting conversation...\n"
sleep 1.0
printf "   %sContext compacted: %s45k -> 8k%s tokens %s✓%s\n\n" "$D" "$B" "$R" "$GR" "$R"
sleep 1.2

printf "  %sthe conversation thread survives, the bloat doesn't.%s\n" "$YE" "$R"
sleep 1.6
