#!/usr/bin/env bash
# A model is just numbers scoring the next token. Show top-k probabilities, then pick.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
CY=$'\e[36m'; GR=$'\e[32m'; YE=$'\e[33m'; GREY=$'\e[90m'

bar() { # bar <filled> <color>
  local n="$1" c="$2" i
  printf "%s" "$c"
  for ((i=0;i<n;i++)); do printf "▓"; done
  printf "%s" "$R"
  for ((i=n;i<10;i++)); do printf "%s░%s" "$GREY" "$R"; done
}

sleep 0.5
printf "%s\$ model%s  \"the cat sat on the ___\"\n\n" "$D" "$R"
sleep 0.8
printf "  %s[ 🧠 just a big pile of numbers ]%s\n" "$D" "$R"
sleep 0.6
printf "  scoring every possible next token...\n\n"
sleep 1.0

printf "   %-7s " "mat";   bar 6 "$GR"; printf "  61%%\n"; sleep 0.45
printf "   %-7s " "floor"; bar 2 "$YE"; printf "  22%%\n"; sleep 0.45
printf "   %-7s " "roof";  bar 1 "$YE"; printf "   9%%\n"; sleep 0.45
printf "   %-7s " "moon";  bar 1 "$GREY"; printf "   3%%\n"; sleep 0.7
printf "\n"
sleep 0.5
printf "  → picks:  the cat sat on the %s%smat%s\n" "$B" "$CY" "$R"
sleep 0.8
printf "  %sthat's the whole job: guess the next token.%s\n" "$D" "$R"
sleep 1.4
