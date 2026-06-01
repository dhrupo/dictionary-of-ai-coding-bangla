#!/usr/bin/env bash
# Prefix cache: identical start gets reused cheaply. Change the start and it breaks.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "%s\$ request 1%s   [ system + history + new ]\n" "$D" "$R"
sleep 0.7
printf "   processed %s12,000%s tokens   cost %s\$0.036%s\n\n" "$B" "$R" "$B" "$R"
sleep 1.1

printf "%s\$ request 2%s   [ system + history + new ]\n" "$D" "$R"
sleep 0.7
printf "   prefix %s11,500%s tokens  " "$B" "$R"; sleep 0.5
printf "%s 💾 CACHED %s  %s(~10%% price)%s\n" "$GR" "$R" "$D" "$R"; sleep 0.6
printf "   new    %s   500%s tokens  " "$B" "$R"; sleep 0.4
printf "%s full price %s\n" "$YE" "$R"; sleep 0.6
printf "   cost %s%s\$0.004%s   %s↓ ~9x cheaper%s\n\n" "$B" "$CY" "$R" "$GR" "$R"
sleep 1.0
printf "  %skeep the start identical and the cache pays for itself.%s\n" "$D" "$R"
sleep 1.4
