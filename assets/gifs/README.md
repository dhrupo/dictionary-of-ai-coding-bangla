# 🎬 GIF অ্যানিমেশন

এই ফোল্ডারের টার্মিনাল-ডেমো GIF গুলো বানানো হয়েছে [**VHS**](https://github.com/charmbracelet/vhs)
দিয়ে — `.tape` টেক্সট স্ক্রিপ্ট থেকে। মানে এগুলো **রিপ্রোডিউসিবল**: সোর্স স্ক্রিপ্ট রিপোতেই আছে,
যে কেউ আবার বানাতে বা বদলাতে পারবেন। 🎉

## ✅ তৈরি হয়ে গেছে (VHS)

| GIF | কোথায় ব্যবহৃত | সোর্স |
|---|---|---|
| `model-predict.gif` | সেকশন ১ — মডেল | [`../vhs/model-predict.tape`](../vhs/model-predict.tape) |
| `training.gif` | সেকশন ১ — ট্রেনিং | [`../vhs/training.tape`](../vhs/training.tape) |
| `token-split.gif` | সেকশন ১ — টোকেন | [`../vhs/token-split.tape`](../vhs/token-split.tape) |
| `next-token.gif` | সেকশন ১ — নেক্সট-টোকেন প্রেডিকশন | [`../vhs/next-token.tape`](../vhs/next-token.tape) |
| `non-determinism.gif` | সেকশন ১ — নন-ডিটারমিনিজম | [`../vhs/non-determinism.tape`](../vhs/non-determinism.tape) |
| `harness.gif` | সেকশন ১ — হার্নেস | [`../vhs/harness.tape`](../vhs/harness.tape) |
| `provider-request.gif` | সেকশন ১ — মডেল প্রোভাইডার রিকোয়েস্ট | [`../vhs/provider-request.tape`](../vhs/provider-request.tape) |
| `prefix-cache.gif` | সেকশন ১ — প্রিফিক্স ক্যাশ | [`../vhs/prefix-cache.tape`](../vhs/prefix-cache.tape) |
| `context-window.gif` | সেকশন ২ — কনটেক্সট উইন্ডো | [`../vhs/context-window.tape`](../vhs/context-window.tape) |
| `sandbox.gif` | সেকশন ৩ — স্যান্ডবক্স | [`../vhs/sandbox.tape`](../vhs/sandbox.tape) |
| `smart-dumb-zone.gif` | সেকশন ৪ — স্মার্ট জোন | [`../vhs/smart-dumb-zone.tape`](../vhs/smart-dumb-zone.tape) |

### কীভাবে আবার বানাবেন

```bash
# একবার ইনস্টল করুন: vhs + ffmpeg + ttyd
brew install vhs            # macOS

cd assets/vhs
vhs token-split.tape        # -> ../gifs/token-split.gif
```

> ⚠️ **নোট:** VHS-এর টার্মিনাল ফন্টে বাংলা গ্লিফ নেই, তাই GIF-এর ভেতরের লেখা ইংরেজিতে (যা আসল
> AI-কোডিং টার্মিনালের মতোই স্বাভাবিক)। বাংলা ব্যাখ্যা থাকে GIF-এর বাইরে markdown-এ।

## 🟡 এখনো বাকি (ঐচ্ছিক, ভবিষ্যতে)

কয়েকটা ধারণা টার্মিনালের চেয়ে চিত্র-অ্যানিমেশনে বেশি মানায় (গোল্ডফিশ, গাড়ি, রেস্টুরেন্ট) —
এগুলো আপাতত [`../svg/`](../svg/)-তে স্ট্যাটিক SVG হিসেবে আছে। চাইলে পরে এগুলোও GIF বানানো যায়:

- [ ] `parameters-tune.gif` — হাজার slider একসঙ্গে adjust হচ্ছে
- [ ] `inference-exam.gif` — পরীক্ষার হলে দ্রুত উত্তর লেখা
- [ ] `provider-restaurant.gif` — অর্ডার → রান্নাঘর → খাবার ফেরত

> 💡 ফ্রি GIF সোর্স: [LottieFiles](https://lottiefiles.com/), [Giphy](https://giphy.com/) (লাইসেন্স দেখে নেবেন)।
