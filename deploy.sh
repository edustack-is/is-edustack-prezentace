#!/usr/bin/env bash
# Commitne a pushne na GitHub (edustack-is/is-edustack-prezentace).
# Nasazení na Cloudflare Pages (účet petr@petrvich.work) provede GitHub Actions
# (.github/workflows/deploy.yml) z tajných klíčů CLOUDFLARE_API_TOKEN a CLOUDFLARE_ACCOUNT_ID.
set -euo pipefail
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-Aktualizace prezentace}" || true
git push origin main
echo "Pushnuto. Průběh nasazení: gh run watch -R edustack-is/is-edustack-prezentace"
echo "Web: https://is-edustack-prezentace.pages.dev"
