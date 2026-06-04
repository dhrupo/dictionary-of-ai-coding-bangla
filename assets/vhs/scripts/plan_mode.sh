#!/usr/bin/env bash
# Plan mode: the agent drafts a plan first, touches no files until you approve.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "  %s⏸ plan mode on — no files will be edited%s\n\n" "$YE" "$R"
sleep 1.1

printf "  %s1.%s read auth.js\n" "$B" "$R"; sleep 0.9
printf "  %s2.%s write failing test\n" "$B" "$R"; sleep 0.9
printf "  %s3.%s patch validateUser\n\n" "$B" "$R"; sleep 1.1

printf "  approve to start coding %s▸%s   %s(your files: untouched ✓)%s" "$CY" "$R" "$GR" "$R"
sleep 0.2
# blinking caret so the closing frames keep changing (helps the GIF stay >50KB)
for i in 1 2 3 4 5; do
  printf "%s _%s" "$CY" "$R"; sleep 0.4
  printf "\b\b  \b\b"; sleep 0.4
done
printf "\n"
sleep 0.8
