# 🎬 GIF placeholders

এই ফোল্ডারে অ্যানিমেটেড GIF যোগ করা হবে। প্রতিটা সেকশন ফাইলে যেখানে GIF বসবে, সেখানে একটা
HTML কমেন্ট রাখা আছে এই ফরম্যাটে:

```html
<!-- GIF-PLACEHOLDER: [কী অ্যানিমেশন বসবে তার বর্ণনা] -->
```

GIF বানানো/যোগ হলে কমেন্টটা সরিয়ে এভাবে একটা ছবি বসাও:

```markdown
<p align="center">
  <img src="../assets/gifs/<filename>.gif" alt="<বর্ণনা>" width="460">
</p>
```

## যেসব GIF দরকার (চেকলিস্ট)

### সেকশন ১ — মডেল
- [ ] `model-predict.gif` — মডেল box-এ শব্দ ঢুকছে, পরের শব্দ পপ করে বের হচ্ছে
- [ ] `parameters-tune.gif` — হাজার হাজার slider একসাথে adjust হচ্ছে
- [ ] `training-progress.gif` — accuracy bar ধীরে ধীরে ভরে উঠছে
- [ ] `inference-exam.gif` — পরীক্ষার হলে কলমে দ্রুত উত্তর লেখা
- [ ] `token-split.gif` — বাক্য টাইপ হওয়ার সাথে রঙিন token-ব্লকে ভাঙছে
- [ ] `next-token-keyboard.gif` — কিবোর্ড সাজেশন থেকে শব্দ বেছে বাক্য তৈরি
- [ ] `non-determinism-dice.gif` — ছক্কা গড়িয়ে আলাদা সংখ্যা উঠছে
- [ ] `provider-restaurant.gif` — অর্ডার → রান্নাঘর → খাবার ফেরত
- [ ] `harness-engine-car.gif` — একই ইঞ্জিন আলাদা গাড়িতে বসছে
- [ ] `request-letter-loop.gif` — চিঠি পাঠানো ও উত্তর ফেরত আসার লুপ
- [ ] `prefix-cache-stamp.gif` — একটা অংশে "cached" স্ট্যাম্প, পরের বার skip

### সেকশন ২ — সেশন, কনটেক্সট ও টার্ন
- [ ] `context-window-fill.gif` — বক্স টোকেনে ভরে যাচ্ছে, ভরলে red

### সেকশন ৩ — টুল ও এনভায়রনমেন্ট
- [ ] `sandbox-sandbox.gif` — বালির বাক্সে খেলা, বাইরে কিছু হচ্ছে না

### সেকশন ৪ — ভুল করার ধরন
- [ ] `dumb-zone-meter.gif` — ব্যাটারি/মিটার সবুজ থেকে লাল হচ্ছে যত টোকেন বাড়ছে

> 💡 ফ্রি/রয়্যালটি-ফ্রি GIF সোর্স: [LottieFiles](https://lottiefiles.com/), [Giphy](https://giphy.com/) (লাইসেন্স দেখে নিয়ো), বা নিজে [ScreenStudio](https://www.screen.studio/) / [ezgif](https://ezgif.com/) দিয়ে বানাও।
