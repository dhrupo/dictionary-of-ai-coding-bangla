#!/usr/bin/env bash
# An AI-friendly project layout: a few files in the right place teach the agent everything.
set -u
B=$'\e[1m'; D=$'\e[2m'; R=$'\e[0m'
GR=$'\e[32m'; YE=$'\e[33m'; CY=$'\e[36m'

sleep 0.5
printf "%smy-project/%s\n" "$B" "$R"
sleep 0.8
printf "├─ %sAGENTS.md%s            %s← read at every session start%s\n" "$CY" "$R" "$D" "$R"; sleep 0.7
printf "├─ .claude/\n"; sleep 0.4
printf "│  ├─ %scommands/%s         %s← your custom slash commands%s\n" "$CY" "$R" "$D" "$R"; sleep 0.7
printf "│  ├─ %sskills/%s           %s← opened only when needed%s\n" "$CY" "$R" "$D" "$R"; sleep 0.7
printf "│  ├─ %sagents/%s\n" "$CY" "$R"; sleep 0.5
printf "│  └─ %ssettings.json%s\n" "$CY" "$R"; sleep 0.5
printf "├─ %s.mcp.json%s\n" "$CY" "$R"; sleep 0.5
printf "└─ %sdocs/specs/%s\n\n" "$CY" "$R"; sleep 0.9

printf "  %salways-loaded files: keep them small.%s\n" "$YE" "$R"
sleep 1.6
