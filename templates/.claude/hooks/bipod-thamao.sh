#!/usr/bin/env bash
# কী: একটা উদাহরণ hook — বিপজ্জনক কমান্ড চালানোর আগেই আটকে দেয়
# কোথায় শেখানো: hands-on/05 (হুক — দরজার সেন্সর-লাইট), hands-on/07 (নিরাপত্তা)
# ব্যবহার: নিজের প্রজেক্টের .claude/hooks/bipod-thamao.sh-তে কপি করুন,
#          তারপর settings.json-এ জুড়ে দিন (পাশের settings.json দেখুন) আর chmod +x করুন।
#
# হুক কীভাবে কাজ করে: এজেন্ট কোনো Bash কমান্ড চালানোর *আগে* এই স্ক্রিপ্টটা নিজে-নিজে চলে।
# exit 2 মানে "থামো!" — কমান্ডটা আর চলবে না, আর stderr-এর বার্তাটা এজেন্ট দেখতে পাবে।

INPUT=$(cat)   # হুক stdin-এ JSON পায়; সরল রাখতে আমরা সোজা টেক্সটেই খুঁজছি

BIPOD=(
  "rm -rf /"
  "rm -rf ~"
  "git push --force"
  "git reset --hard origin"
)

for p in "${BIPOD[@]}"; do
  if printf '%s' "$INPUT" | grep -qF "$p"; then
    echo "⛔ বিপদ! '$p' — এই কমান্ডটা আটকে দেওয়া হলো। সত্যিই দরকার হলে মানুষ নিজে চালাক।" >&2
    exit 2
  fi
done

exit 0   # নিরাপদ — চলুক
