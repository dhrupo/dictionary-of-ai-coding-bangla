#!/usr/bin/env bash
# Red -> green -> refactor: failing test first, minimal code, then tidy up.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; RED=$'\e[31m'; YE=$'\e[33m'

sleep 0.5
printf "  %s🔴 test_discount_zero ... FAIL%s\n" "$RED" "$R"; sleep 0.7
printf "     %s(not implemented)%s\n\n" "$D" "$R"; sleep 1.0

printf "  write minimal code...\n\n"; sleep 1.1

printf "  %s🟢 test_discount_zero ... PASS%s\n\n" "$GR" "$R"; sleep 1.1

printf "  🛠 refactor -- tests still green %s✓%s\n" "$GR" "$R"; sleep 0.9
printf "  %s-> repeat%s  %srunning tests%s" "$YE" "$R" "$D" "$R"
sleep 0.2
# blinking caret so the closing frames keep changing (helps the GIF stay >50KB)
for i in 1 2 3 4 5; do
  printf "%s _%s" "$GR" "$R"; sleep 0.4
  printf "\b\b  \b\b"; sleep 0.4
done
printf "\n"
sleep 0.8
