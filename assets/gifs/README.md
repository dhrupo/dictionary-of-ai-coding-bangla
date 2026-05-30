# 🎬 GIF অ্যানিমেশন

এই ফোল্ডারের টার্মিনাল-ডেমো GIF গুলো বানানো হয়েছে [**VHS**](https://github.com/charmbracelet/vhs)
দিয়ে — `.tape` টেক্সট স্ক্রিপ্ট থেকে। মানে এগুলো **রিপ্রোডিউসিবল**: সোর্স স্ক্রিপ্ট রিপোতেই আছে,
যে কেউ আবার বানাতে বা বদলাতে পারবে। 🎉

## ✅ তৈরি হয়ে গেছে (VHS)

| GIF | কোথায় ব্যবহৃত | সোর্স |
|---|---|---|
| `token-split.gif` | সেকশন ১ — টোকেন | [`../vhs/token-split.tape`](../vhs/token-split.tape) |
| `next-token.gif` | সেকশন ১ — নেক্সট-টোকেন প্রেডিকশন | [`../vhs/next-token.tape`](../vhs/next-token.tape) |
| `non-determinism.gif` | সেকশন ১ — নন-ডিটারমিনিজম | [`../vhs/non-determinism.tape`](../vhs/non-determinism.tape) |
| `context-window.gif` | সেকশন ২ — কনটেক্সট উইন্ডো | [`../vhs/context-window.tape`](../vhs/context-window.tape) |

### কীভাবে আবার বানাবে

```bash
# একবার ইনস্টল করো: vhs + ffmpeg + ttyd
brew install vhs            # macOS

cd assets/vhs
vhs token-split.tape        # -> ../gifs/token-split.gif
```

> ⚠️ **নোট:** VHS-এর টার্মিনাল ফন্টে বাংলা গ্লিফ নেই, তাই GIF-এর ভেতরের লেখা ইংরেজিতে (যা আসল
> AI-কোডিং টার্মিনালের মতোই স্বাভাবিক)। বাংলা ব্যাখ্যা থাকে GIF-এর বাইরে markdown-এ।

## 🟡 এখনো বাকি (ঐচ্ছিক, ভবিষ্যতে)

VHS দিয়ে হয় না এমন চিত্র-অ্যানিমেশন (যেমন গোল্ডফিশ, গাড়ি) — এগুলো আপাতত
[`../svg/`](../svg/)-তে স্ট্যাটিক SVG হিসেবে আছে। চাইলে পরে এগুলোও অ্যানিমেটেড GIF বানানো যায়:

- [ ] `parameters-tune.gif` — হাজার slider adjust হচ্ছে
- [ ] `training-progress.gif` — accuracy bar ভরছে
- [ ] `provider-restaurant.gif` — অর্ডার → রান্নাঘর → খাবার
- [ ] `request-letter-loop.gif` — চিঠি পাঠানো-আসার লুপ
- [ ] `prefix-cache-stamp.gif` — "cached" স্ট্যাম্প
- [ ] `sandbox.gif` — বালির বাক্সে খেলা

> 💡 ফ্রি GIF সোর্স: [LottieFiles](https://lottiefiles.com/), [Giphy](https://giphy.com/) (লাইসেন্স দেখে নিয়ো)।
