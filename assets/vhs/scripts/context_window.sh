#!/usr/bin/env bash
# Context window filling up: green -> yellow -> red (single in-place bar).
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GRN=$'\e[32m'; YEL=$'\e[33m'; RED=$'\e[31m'

printf "%s$ context-window --watch%s\n\n" "$D" "$R"
sleep 0.6
WIDTH=24
for pct in 0 8 16 25 34 45 55 64 72 80 87 92 96 100; do
  filled=$(( pct * WIDTH / 100 ))
  empty=$(( WIDTH - filled ))
  if   [ "$pct" -lt 60 ]; then C="$GRN"; tag="${GRN}smart  ${R}"
  elif [ "$pct" -lt 90 ]; then C="$YEL"; tag="${YEL}filling${R}"
  else C="$RED"; tag="${RED}DUMB!  ${R}"; fi
  bar=""
  for ((i=0;i<filled;i++)); do bar+="█"; done
  for ((i=0;i<empty;i++));  do bar+="░"; done
  k=$(( pct * 2 ))
  printf "\r  ${C}%s${R} ${B}%3d%%${R} %3dk/200k  %s   " "$bar" "$pct" "$k" "$tag"
  sleep 0.32
done
printf "\n\n"
sleep 0.3
printf "  ${RED}[!] full -> clear or /compact before it gets dumb${R}\n"
sleep 1.4
