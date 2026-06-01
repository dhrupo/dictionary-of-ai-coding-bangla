#!/usr/bin/env bash
# As the session fills up, the fixed attention budget spreads thin: smart -> dumb zone.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; RED=$'\e[31m'; GREY=$'\e[90m'

meter() { # meter <filled> <color>
  local n="$1" c="$2" i
  printf "["
  printf "%s" "$c"
  for ((i=0;i<n;i++)); do printf "█"; done
  printf "%s" "$R"
  for ((i=n;i<10;i++)); do printf "%s·%s" "$GREY" "$R"; done
  printf "]"
}

row() { # row <ctx-label> <filled> <color> <emoji> <zone>
  printf "  context %-12s quality " "$1"
  meter "$2" "$3"; printf "  %s  %s\n" "$4" "$5"
}

sleep 0.5
printf "%s\$ one long session, watch the quality...%s\n\n" "$D" "$R"
sleep 0.8
row "5k tokens"   10 "$GR"  "🌟" "${GR}smart zone${R}"; sleep 0.7
row "40k tokens"   8 "$GR"  "🙂" ""; sleep 0.7
row "80k tokens"   5 "$YE"  "😐" ""; sleep 0.7
row "120k tokens"  3 "$RED" "🥴" "${RED}dumb zone${R}"; sleep 0.9
printf "\n"
printf "  %ssame model. the attention budget just spread too thin.%s\n" "$D" "$R"
sleep 1.4
