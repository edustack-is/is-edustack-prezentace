#!/usr/bin/env bash
# Commitne a pushne na GitHub (edustack-is/is-edustack-prezentace).
# Cloudflare Pages (účet petr@petrvich.work) je napojený na repozitář a push na main nasadí sám.
set -euo pipefail
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-Aktualizace prezentace}" || true
git push origin main
echo "Pushnuto. Web: https://obhajoba.is-edustack.org"
