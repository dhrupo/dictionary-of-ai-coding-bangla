<!-- কী: এই ফোল্ডারের স্টার্টার ফাইলগুলোর সূচি | কোথায় শেখানো: hands-on/02-folder-structure.md, hands-on/04-popular-skills.md | ব্যবহার: এই ফাইলটা পড়ে দরকারি টেমপ্লেটটা বেছে নিন -->

# 📦 টেমপ্লেট — কপি-পেস্ট স্টার্টার কিট

এই ফোল্ডারের ফাইলগুলো কপি করেই নিজের প্রজেক্টে ব্যবহার করুন।
হাতে-কলমে সেকশনগুলোতে যে স্টার্টার-ফাইলের *টুকরো* দেখানো হয়েছে, সেগুলোর পুরো, কপি-করার-মতো রূপ এখানে।
ফাঁকা জায়গাগুলো (`<...>`) নিজের প্রজেক্টের তথ্য দিয়ে ভরে নিন।

| ফাইল | কী | কোথায় কপি করবেন |
| --- | --- | --- |
| [AGENTS.md](AGENTS.md) | এজেন্টের "চিরকুট" — প্রতি সেশনে পড়া হয় | প্রজেক্টের গোড়ায় (`./AGENTS.md`) |
| [handoff-artifact.md](handoff-artifact.md) | সেশন শেষের হ্যান্ডঅফ আর্টিফ্যাক্ট টেমপ্লেট | `docs/specs/handoff-YYYY-MM-DD.md` |
| [.claude/commands/handoff.md](.claude/commands/handoff.md) | `/handoff` স্ল্যাশ কমান্ড | `.claude/commands/handoff.md` |
| [.claude/skills/bangla-commit/SKILL.md](.claude/skills/bangla-commit/SKILL.md) | বাংলা কমিট মেসেজ স্কিল | `.claude/skills/bangla-commit/SKILL.md` |
| [.claude/agents/review-bondhu.md](.claude/agents/review-bondhu.md) | উদাহরণ সাবএজেন্ট — কোড রিভিউয়ের আলাদা চোখ | `.claude/agents/review-bondhu.md` |
| [.claude/rules/code-style.md](.claude/rules/code-style.md) | বিষয়ভিত্তিক নিয়ম-ফাইল — AGENTS.md হালকা রাখার কৌশল | `.claude/rules/code-style.md` |
| [.claude/hooks/bipod-thamao.sh](.claude/hooks/bipod-thamao.sh) | উদাহরণ hook — বিপজ্জনক কমান্ড আগেই আটকায় | `.claude/hooks/bipod-thamao.sh` (+ `chmod +x`) |
| [.claude/settings.json](.claude/settings.json) | পারমিশন + hook জুড়ে দেওয়ার ছাঁচ | `.claude/settings.json` |

## 🗂️ পুরো কাঠামোটা এক নজরে

```text
আমার-প্রজেক্ট/
├── AGENTS.md                       # 🧠 চিরকুট — প্রতি সেশনে পড়া হয়
├── docs/specs/handoff-*.md         # 🤝 হ্যান্ডঅফ আর্টিফ্যাক্ট
└── .claude/
    ├── commands/handoff.md         # ⚡ নিজের স্ল্যাশ কমান্ড
    ├── skills/bangla-commit/       # 🎒 স্কিল — দরকারে খোলে
    ├── agents/review-bondhu.md     # 🤖 সাবএজেন্ট — আলাদা চোখ
    ├── rules/code-style.md         # 📏 ছোট ছোট নিয়ম-ফাইল
    ├── hooks/bipod-thamao.sh       # 🚨 ঘটনার আগে নিজে-নিজে চলা পাহারা
    └── settings.json               # ⚙️ পারমিশন + hook-এর তার-জোড়া
```

> 🧩 এই ভাগাভাগির ধরনটা community-তে বহুল-ব্যবহৃত — যেমন [poshan0126/dotclaude](https://github.com/poshan0126/dotclaude)
> টেমপ্লেট, যেখানে agents/skills/rules/hooks ঠিক এভাবেই সাজানো। আমরা প্রতিটার একটা করে
> বাংলা-টীকা-দেওয়া উদাহরণ রেখেছি — কোনটা কী করে, বইয়ের কোন সেকশনে শেখানো হয়েছে, ফাইলের মাথার মন্তব্যেই লেখা।

---

> ⚠️ **ছোট্ট সতর্কতা:** এই ফোল্ডারের ভেতরে `.claude/` আছে বলে, এই রিপোটাই কোনো AI কোডিং টুলে খুললে
> `bangla-commit` স্কিল বা `review-bondhu` এজেন্টের মতো উদাহরণগুলো *এই রিপোর জন্যও* চালু হয়ে যেতে পারে —
> ওগুলো কিন্তু শুধু উদাহরণ। নিজের প্রজেক্টে কপি করে ব্যবহার করুন, এখানে এগুলো "জ্যান্ত" ধরে নেবেন না।

**আরও পড়ুন:**

- [হাতে-কলমে ২](../hands-on/02-folder-structure.md) — AI-ফ্রেন্ডলি ফোল্ডার স্ট্রাকচার (AGENTS.md কোথায়, কী)
- [হাতে-কলমে ৪](../hands-on/04-popular-skills.md) — জনপ্রিয় স্কিল ও ওয়ার্কফ্লো (`/handoff`, SKILL.md, আর্টিফ্যাক্ট)
- [গল্পে দেখুন: অধ্যায় ২](../story/02-the-plan.md)
