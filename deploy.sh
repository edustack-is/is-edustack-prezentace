#!/usr/bin/env bash
# Znovu nasadí aktuální stav na GitHub a Cloudflare Pages.
# Předpoklady: gh (gh auth status), wrangler přes npx (npx wrangler whoami).
set -euo pipefail
cd "$(dirname "$0")"
PROJECT="is-edustack-prezentace"

git add -A
git commit -m "${1:-Aktualizace prezentace}" || true
git push origin main
npx --yes wrangler pages deploy . --project-name "$PROJECT" --branch main --commit-dirty=true
echo "Hotovo: https://$PROJECT.pages.dev"
