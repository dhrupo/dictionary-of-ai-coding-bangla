# 🎬 GIF অ্যানিমেশন

এই ফোল্ডারের টার্মিনাল-ডেমো GIF গুলো বানানো হয়েছে [**VHS**](https://github.com/charmbracelet/vhs)
দিয়ে — `.tape` টেক্সট স্ক্রিপ্ট থেকে। মানে এগুলো **রিপ্রোডিউসিবল**: সোর্স স্ক্রিপ্ট রিপোতেই আছে,
যে কেউ আবার বানাতে বা বদলাতে পারবেন। 🎉

## ✅ তৈরি হয়ে গেছে (VHS)

| GIF | কোথায় ব্যবহৃত | সোর্স |
|---|---|---|
| `model-predict.gif` | সেকশন ১ — মডেল | [`../vhs/model-predict.tape`](../vhs/model-predict.tape) |
| `parameters.gif` | সেকশন ১ — প্যারামিটার | [`../vhs/parameters.tape`](../vhs/parameters.tape) |
| `training.gif` | সেকশন ১ — ট্রেনিং | [`../vhs/training.tape`](../vhs/training.tape) |
| `inference.gif` | সেকশন ১ — ইনফারেন্স | [`../vhs/inference.tape`](../vhs/inference.tape) |
| `token-split.gif` | সেকশন ১ — টোকেন | [`../vhs/token-split.tape`](../vhs/token-split.tape) |
| `next-token.gif` | সেকশন ১ — নেক্সট-টোকেন প্রেডিকশন | [`../vhs/next-token.tape`](../vhs/next-token.tape) |
| `non-determinism.gif` | সেকশন ১ — নন-ডিটারমিনিজম | [`../vhs/non-determinism.tape`](../vhs/non-determinism.tape) |
| `harness.gif` | সেকশন ১ — হার্নেস | [`../vhs/harness.tape`](../vhs/harness.tape) |
| `provider-restaurant.gif` | সেকশন ১ — মডেল প্রোভাইডার | [`../vhs/provider-restaurant.tape`](../vhs/provider-restaurant.tape) |
| `provider-request.gif` | সেকশন ১ — মডেল প্রোভাইডার রিকোয়েস্ট | [`../vhs/provider-request.tape`](../vhs/provider-request.tape) |
| `prefix-cache.gif` | সেকশন ১ — প্রিফিক্স ক্যাশ | [`../vhs/prefix-cache.tape`](../vhs/prefix-cache.tape) |
| `context-window.gif` | সেকশন ২ — কনটেক্সট উইন্ডো | [`../vhs/context-window.tape`](../vhs/context-window.tape) |
| `sandbox.gif` | সেকশন ৩ — স্যান্ডবক্স | [`../vhs/sandbox.tape`](../vhs/sandbox.tape) |
| `smart-dumb-zone.gif` | সেকশন ৪ — স্মার্ট জোন | [`../vhs/smart-dumb-zone.tape`](../vhs/smart-dumb-zone.tape) |
| `slash-commands.gif` | হাতে-কলমে ১ — /compact | [`../vhs/slash-commands.tape`](../vhs/slash-commands.tape) |
| `plan-mode.gif` | হাতে-কলমে ১ — প্ল্যান মোড | [`../vhs/plan-mode.tape`](../vhs/plan-mode.tape) |
| `folder-tree.gif` | হাতে-কলমে ২ — ফোল্ডার স্ট্রাকচার | [`../vhs/folder-tree.tape`](../vhs/folder-tree.tape) |
| `handoff.gif` | হাতে-কলমে ৪ — হ্যান্ডঅফ | [`../vhs/handoff.tape`](../vhs/handoff.tape) |

### কীভাবে আবার বানাবেন

```bash
# একবার ইনস্টল করুন: vhs + ffmpeg + ttyd
brew install vhs            # macOS

cd assets/vhs
vhs token-split.tape        # -> ../gifs/token-split.gif
```

> ⚠️ **নোট:** VHS-এর টার্মিনাল ফন্টে বাংলা গ্লিফ নেই, তাই GIF-এর ভেতরের লেখা ইংরেজিতে (যা আসল
> AI-কোডিং টার্মিনালের মতোই স্বাভাবিক)। বাংলা ব্যাখ্যা থাকে GIF-এর বাইরে markdown-এ।

## 🟢 প্লেসহোল্ডার বাকি নেই

ডিকশনারির সব GIF-প্লেসহোল্ডার এখন VHS টার্মিনাল-ডেমো দিয়ে পূরণ করা। কোনো নতুন শব্দে GIF যোগ
করতে চাইলে: `assets/vhs/scripts/`-এ একটা ছোট ANSI bash স্ক্রিপ্ট লিখুন, পাশে একটা `.tape` রাখুন,
`vhs <name>.tape` চালান, তারপর সংশ্লিষ্ট সেকশনে এমবেড করুন।
