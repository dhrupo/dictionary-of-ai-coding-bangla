#!/usr/bin/env bash
# Vague prompt makes the agent flail; a file-path prompt lands one clean fix.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; RED=$'\e[31m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "%syou>%s fix the login bug\n" "$CY" "$R"
sleep 1.0
printf "   %ssearching 214 files...%s\n" "$D" "$R"; sleep 0.9
printf "   %sguessing the structure...%s\n" "$D" "$R"; sleep 0.9
printf "   %stouched 3 wrong files%s %s✗%s\n\n" "$D" "$R" "$RED" "$R"; sleep 1.1

printf "%syou>%s %ssrc/auth/login.js%s: validateUser() returns true\n" "$CY" "$R" "$B" "$R"
printf "      for empty password -- fix\n"
sleep 1.2
printf "   opened login.js %s->%s patched line 42 %s✓%s\n" "$D" "$R" "$GR" "$R"; sleep 1.0
printf "   %sone file, one fix.%s\n" "$YE" "$R"
sleep 1.6
