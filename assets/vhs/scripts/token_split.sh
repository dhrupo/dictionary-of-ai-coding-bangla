#!/usr/bin/env bash
# Illustrative token-splitting animation (no external deps).
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
# black text on bright backgrounds for crisp readable chips
BLU=$'\e[104m\e[30m'; GRN=$'\e[102m\e[30m'; YEL=$'\e[103m\e[30m'; MAG=$'\e[105m\e[30m'

sleep 0.5
printf "%s$ tokenize \"Hippopotamus eats\"%s\n\n" "$D" "$R"
sleep 0.8
printf "  splitting into tokens...\n\n"
sleep 0.7

printf "  "
sleep 0.4; printf "%s Hip %s "    "$GRN" "$R"; sleep 0.5
printf "%s popo %s "              "$YEL" "$R"; sleep 0.5
printf "%s tamus %s "             "$MAG" "$R"; sleep 0.5
printf "%s eats %s "              "$BLU" "$R"; sleep 0.6
printf "\n\n"
sleep 0.6
printf "  ${B}2 words  =  4 tokens${R}\n"
sleep 0.6
printf "  ${D}(common words = 1 token, rare/long words split up)${R}\n"
sleep 1.2
