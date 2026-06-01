#!/usr/bin/env bash
# One question -> many requests, and the whole story is resent every time (goldfish memory).
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
CY=$'\e[36m'; GR=$'\e[32m'; YE=$'\e[33m'

req() { # req <n> <what> <tokens>
  printf "  req %s  harness → provider   %s%-18s%s  %ssends %s tok%s\n" \
    "$1" "$CY" "$2" "$R" "$D" "$3" "$R"
  sleep 0.35
  printf "         provider → harness   %sgoldfish 🐠 forgot — resend it all%s\n\n" "$D" "$R"
  sleep 0.55
}

sleep 0.5
printf "%s\$ ai \"fix the failing test\"%s   %s(one question)%s\n\n" "$D" "$R" "$D" "$R"
sleep 0.8
req "1" "read test.js"   "8k";  sleep 0.1
req "2" "grep getUser"   "9k";  sleep 0.1
req "3" "edit user.js"   "11k"; sleep 0.1
printf "  %s%sone question  →  3 requests%s   %seach one resends the whole session%s\n" \
  "$B" "$GR" "$R" "$D" "$R"
sleep 1.4
