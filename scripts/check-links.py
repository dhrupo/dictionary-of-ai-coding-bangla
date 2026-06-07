#!/usr/bin/env python3
"""রিপোর সব markdown লিংক ও anchor যাচাই — ভাঙা থাকলে exit 1.

কী ধরে:
  - relative লিংকের টার্গেট ফাইল আছে কিনা (.md, .sh, .json, ছবি)
  - #anchor আসল heading-এর GitHub slug-এর সঙ্গে মেলে কিনা
    (slug নিয়ম: ইংরেজি lowercase, স্পেস→হাইফেন, যতিচিহ্ন/ইমোজি বাদ — বাংলা অক্ষর থাকে;
     ইমোজি-শুরু heading-এর slug তাই একটা হাইফেন দিয়ে শুরু হয়, যেমন #-গ্রিল-মি-grill-me)

চালান: python3 scripts/check-links.py   (কোনো dependency লাগে না)
"""
import re
import subprocess
import sys
import pathlib
import urllib.parse
import unicodedata

ROOT = pathlib.Path(__file__).resolve().parent.parent

# জানা মিথ্যা-ধরা: ডকের ভেতরের *উদাহরণ* লিংক, আসল লিংক নয়
ALLOWLIST = {
    ("CONTRIBUTING.md", "file.md"),
}


def github_slug(heading: str) -> str:
    heading = heading.strip().lstrip("#").strip()
    out = []
    for ch in heading.lower():
        cat = unicodedata.category(ch)
        if ch.isalnum() or cat.startswith(("L", "M")):
            out.append(ch)
        elif ch in " -":
            out.append("-")
        # বাকি সব (যতিচিহ্ন, ইমোজি, ব্যাকটিক) বাদ
    return "".join(out)


def md_files():
    # শুধু git-এ tracked ফাইল — gitignored খসড়া (docs/superpowers ইত্যাদি) বাদ
    out = subprocess.run(
        ["git", "ls-files", "*.md"], cwd=ROOT, capture_output=True, text=True, check=True
    )
    for rel in out.stdout.splitlines():
        if rel:
            yield ROOT / rel


def headings_of(path: pathlib.Path) -> set:
    slugs, fence = set(), False
    for line in path.read_text(encoding="utf-8").splitlines():
        if line.startswith("```"):
            fence = not fence
        if not fence and re.match(r"^#{1,6} ", line):
            slugs.add(github_slug(line))
    return slugs


def main() -> int:
    files = list(md_files())
    headings = {p.resolve(): headings_of(p) for p in files}
    link_re = re.compile(r"\]\((?!https?://|mailto:)([^)#]+)?(#[^)]+)?\)")
    bad = []

    for md in files:
        rel_md = md.relative_to(ROOT).as_posix()
        fence = False
        for lineno, line in enumerate(md.read_text(encoding="utf-8").splitlines(), 1):
            if line.startswith("```"):
                fence = not fence
            if fence:
                continue
            for m in link_re.finditer(line):
                target_str, anchor = m.group(1), m.group(2)
                if target_str and (rel_md, target_str) in ALLOWLIST:
                    continue
                if target_str:
                    target = (md.parent / urllib.parse.unquote(target_str)).resolve()
                    if not target.exists():
                        bad.append(f"{rel_md}:{lineno}  ভাঙা ফাইল-লিংক → {target_str}")
                        continue
                else:
                    target = md.resolve()
                if anchor and target in headings:
                    slug = urllib.parse.unquote(anchor[1:])
                    if slug not in headings[target]:
                        bad.append(f"{rel_md}:{lineno}  ভাঙা anchor → {target_str or ''}{anchor}")

    if bad:
        print(f"❌ {len(bad)}টা ভাঙা লিংক/anchor:\n")
        print("\n".join(bad))
        return 1
    print(f"✅ সব ঠিক — {len(files)}টা ফাইল, সব লিংক ও anchor জীবিত।")
    return 0


if __name__ == "__main__":
    sys.exit(main())
