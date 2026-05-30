#!/usr/bin/env bash
# Same prompt, different output = non-determinism.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'; CY=$'\e[36m'; GR=$'\e[32m'

type_line() { local s="$1"; for ((i=0;i<${#s};i++)); do printf "%s" "${s:$i:1}"; sleep 0.012; done; printf "\n"; }

sleep 0.4
printf "%s$ %s" "$D" "$R"; type_line "ai \"write one line about the sea\""
sleep 0.5
printf "  ${CY}> The sea hums old songs to the patient shore.${R}\n\n"
sleep 1.1

printf "%s$ %s" "$D" "$R"; type_line "ai \"write one line about the sea\"   # same prompt!"
sleep 0.5
printf "  ${CY}> Salt wind writes and erases the same blue line.${R}\n\n"
sleep 1.1

printf "  ${B}${GR}same input  ->  different output${R}\n"
printf "  ${D}that's non-determinism. perfectly normal.${R}\n"
sleep 1.4
