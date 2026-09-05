#!/usr/bin/env bash
# Commitne a pushne na GitHub (edustack-is/is-edustack-prezentace).
# Cloudflare Worker (statické soubory, účet petr@petrvich.work) je napojený na repozitář; push na main nasadí produkci, jiná větev preview.
set -euo pipefail
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-Aktualizace prezentace}" || true
git push origin "$(git branch --show-current)"
echo "Pushnuto. Web: https://obhajoba.is-edustack.org"
