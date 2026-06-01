#!/usr/bin/env bash
# The model provider is the kitchen: you order, harness carries it, provider cooks (runs the model).
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'; CY=$'\e[36m'; GR=$'\e[32m'

sleep 0.5
printf "   %syou%s             %sharness%s          %sprovider%s 🍳\n" "$B" "$R" "$B" "$R" "$B" "$R"
sleep 0.8
printf "    %s\"fix the bug\"%s\n" "$CY" "$R"; sleep 0.4
printf "    %s├───────────►%s   order (prompt)\n" "$D" "$R"; sleep 0.7
printf "    %s│%s             %s├────────────►%s   runs the model\n" "$D" "$R" "$D" "$R"; sleep 0.7
printf "    %s│%s             %s│%s               %scooking... 🔥%s\n" "$D" "$R" "$D" "$R" "$D" "$R"; sleep 0.8
printf "    %s│%s             %s◄────────────┤%s   the dish (response)\n" "$D" "$R" "$D" "$R"; sleep 0.7
printf "    %s◄───────────┤%s   served to you\n\n" "$D" "$R"; sleep 0.8
printf "  %sthe provider is the kitchen — it runs the model and plates the answer.%s\n" "$D" "$R"
sleep 1.4
