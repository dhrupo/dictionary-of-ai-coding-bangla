#!/usr/bin/env bash
# Training happens once; inference runs on every question and is billed per token.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'; GR=$'\e[32m'; CY=$'\e[36m'; YE=$'\e[33m'; GREY=$'\e[90m'
type_line(){ local s="$1" i; for((i=0;i<${#s};i++)); do printf "%s" "${s:$i:1}"; sleep 0.014; done; printf "\n"; }

sleep 0.5
printf "  %straining%s   %s████████%s  done once, frozen      %s(months, \$\$\$\$)%s\n" "$B" "$R" "$GR" "$R" "$GREY" "$R"
sleep 0.8
printf "  %sinference%s  ▶ runs on %severy%s question        %s(paid per token)%s\n\n" "$B" "$R" "$YE" "$R" "$GREY" "$R"
sleep 1.0
printf "%s\$ %s" "$D" "$R"; type_line "ai \"name 3 sorting algorithms\""
sleep 0.4
printf "  %s> %s" "$CY" "$R"; type_line "quicksort, mergesort, heapsort"
sleep 0.5
printf "  %s12 tokens out · billed this turn%s\n\n" "$D" "$R"
sleep 0.9
printf "  %severy question = another inference = another bill.%s\n" "$D" "$R"
sleep 1.4
