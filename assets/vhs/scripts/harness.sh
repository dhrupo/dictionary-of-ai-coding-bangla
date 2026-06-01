#!/usr/bin/env bash
# Same model, two harnesses -> two very different agents. Same engine, different car.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
CY=$'\e[36m'; GR=$'\e[32m'; MA=$'\e[35m'

sleep 0.5
printf "  %ssame model%s  🧠  →  two different harnesses\n\n" "$B" "$R"
sleep 1.0

printf "  %s%sClaude.ai%s\n" "$B" "$CY" "$R"
sleep 0.4
printf "    tools: %snone%s\n" "$D" "$R"
sleep 0.4
printf "    → \"here's how you'd do it...\"   %s(just talks)%s\n\n" "$D" "$R"
sleep 1.0

printf "  %s%sClaude Code%s\n" "$B" "$MA" "$R"
sleep 0.4
printf "    tools: %sRead  Edit  Bash%s\n" "$GR" "$R"
sleep 0.4
printf "    → *opens the file, edits it, runs the tests*\n\n"
sleep 1.0

printf "  %ssame engine, different car.%s\n" "$D" "$R"
sleep 1.4
