#!/usr/bin/env bash
# Training nudges billions of weights into place. Show a row of sliders settling.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'; GR=$'\e[32m'; GREY=$'\e[90m'
W=14
pos=(2 12 3 13 8 1)
tgt=(9 4 11 6 2 12)
names=(w0 w1 w2 w3 w4 w5)

render() {
  local i j
  for ((i=0;i<6;i++)); do
    printf "  %s%s%s  |" "$D" "${names[i]}" "$R"
    for ((j=0;j<W;j++)); do
      if (( j==pos[i] )); then printf "%s%so%s" "$B" "$GR" "$R"
      else printf "%s·%s" "$GREY" "$R"; fi
    done
    printf "|\n"
  done
}

sleep 0.5
printf "%s\$ training: tuning the parameters (weights)...%s\n\n" "$D" "$R"
sleep 0.6
render
moved=1
while (( moved )); do
  sleep 0.20
  moved=0
  for ((i=0;i<6;i++)); do
    if   (( pos[i] < tgt[i] )); then pos[i]=$((pos[i]+1)); moved=1
    elif (( pos[i] > tgt[i] )); then pos[i]=$((pos[i]-1)); moved=1; fi
  done
  printf '\e[6A'
  render
done
sleep 0.5
printf "\n  %s%s✓ settled.%s  billions of these numbers = everything it \"knows\".\n" "$B" "$GR" "$R"
sleep 1.4
