#!/usr/bin/env bash
# Training: accuracy climbs, loss drops, over epochs. Happens once, expensively.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'; GR=$'\e[32m'; GREY=$'\e[90m'

meter() { # meter <pct>
  local pct="$1"; local filled=$((pct/10)); local i
  printf "["
  printf "%s" "$GR"
  for ((i=0;i<filled;i++)); do printf "▓"; done
  printf "%s" "$R"
  for ((i=filled;i<10;i++)); do printf "%s░%s" "$GREY" "$R"; done
  printf "]"
}

epoch() { # epoch <n> <loss> <acc>
  printf "  epoch %s  loss %s  acc " "$1" "$2"
  meter "$3"; printf " %s%%\n" "$3"
}

sleep 0.5
printf "%s\$ train model.py%s\n\n" "$D" "$R"
sleep 0.7
epoch "1" "2.81" "18"; sleep 0.55
epoch "3" "1.94" "44"; sleep 0.55
epoch "5" "0.92" "67"; sleep 0.55
epoch "7" "0.41" "85"; sleep 0.55
epoch "9" "0.12" "97"; sleep 0.8
printf "\n"
printf "  %s%s✓ parameters frozen.%s\n" "$B" "$GR" "$R"
sleep 0.5
printf "  %s(this happens once, and it is wildly expensive.)%s\n" "$D" "$R"
sleep 1.4
