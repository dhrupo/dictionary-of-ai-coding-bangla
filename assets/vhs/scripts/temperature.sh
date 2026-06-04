#!/usr/bin/env bash
# Low temperature = same safe answer; high temperature = varied, wild answers.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "  prompt: %s\"name this function\"%s\n\n" "$D" "$R"
sleep 0.9

printf "%stemp 0.1%s %s▸%s  safe, repeatable\n" "$B" "$R" "$CY" "$R"; sleep 0.7
printf "   parseUser\n"; sleep 0.5
printf "   parseUser\n"; sleep 0.5
printf "   parseUser   %s(same every time)%s\n\n" "$GR" "$R"; sleep 1.1

printf "%stemp 1.0%s %s▸%s  creative, risky %s🎲%s\n" "$B" "$R" "$CY" "$R" "$YE" "$R"; sleep 0.7
printf "   parseUser\n"; sleep 0.5
printf "   extractHero\n"; sleep 0.5
printf "   digestSoul  %s(varied, wild)%s\n" "$YE" "$R"; sleep 1.5
