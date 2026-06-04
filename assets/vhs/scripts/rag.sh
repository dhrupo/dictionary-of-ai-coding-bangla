#!/usr/bin/env bash
# RAG: search docs first, attach the match to context, then answer open-book.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "%syou>%s what is our refund policy?\n\n" "$CY" "$R"
sleep 1.0

printf "   🔎 searching docs...\n"; sleep 1.0
printf "   found %srefunds.md%s %s(top match)%s\n" "$B" "$R" "$D" "$R"; sleep 1.0
printf "   📎 attaching to context\n\n"; sleep 1.0

printf "   answer: refunds within 14 days %s✓%s\n" "$GR" "$R"; sleep 0.9
printf "   %sopen-book, not from memory.%s\n" "$YE" "$R"
sleep 1.6
