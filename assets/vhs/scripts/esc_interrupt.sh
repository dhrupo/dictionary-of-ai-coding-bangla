#!/usr/bin/env bash
# ESC stops the agent mid-turn so you can correct it and get back on track.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "  agent: refactoring payments.js...\n"; sleep 1.0
printf "  %sediting the wrong module...%s\n\n" "$D" "$R"; sleep 1.1

printf "  %syou pressed ESC%s\n" "$YE" "$R"; sleep 0.8
printf "  %s■ stopped mid-turn%s\n\n" "$B" "$R"; sleep 1.1

printf "%syou>%s wrong file -- it's billing.js\n" "$CY" "$R"; sleep 1.1
printf "  back on track %s✓%s  %sediting billing.js%s" "$GR" "$R" "$CY" "$R"
sleep 0.2
# blinking caret so the closing frames keep changing (helps the GIF stay >50KB)
for i in 1 2 3 4 5; do
  printf "%s _%s" "$CY" "$R"; sleep 0.4
  printf "\b\b  \b\b"; sleep 0.4
done
printf "\n"
sleep 0.8
