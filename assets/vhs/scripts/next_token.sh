#!/usr/bin/env bash
# Next-token prediction: builds a sentence one token at a time (append-only).
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'; GR=$'\e[32m'; CY=$'\e[36m'

printf "%s$ predict --one-token-at-a-time%s\n\n" "$D" "$R"
sleep 0.6
sentence="The cat sat on the"
printf "  ${B}%s${R} ${D}___${R}\n" "$sentence"
sleep 0.9

# pick|candidate list
steps=("mat|mat .61   rug .22   floor .09"
       "and|and .40   then .31   so .12"
       "purred|purred .52   slept .27   yawned .14")
for step in "${steps[@]}"; do
  pick="${step%%|*}"; cands="${step#*|}"
  printf "    ${D}candidates:${R} ${CY}%s${R}   ${D}->${R} ${B}${GR}%s${R}\n" "$cands" "$pick"
  sleep 1.0
  sentence="$sentence $pick"
  printf "  ${B}%s${R} ${D}___${R}\n" "$sentence"
  sleep 0.7
done
printf "\n"
printf "  ${D}every word = one predicted token, appended, then repeat.${R}\n"
sleep 1.4
