# Edu Stack IS – prezentace k obhajobě bakalářské práce

**Informační systém pro podporu výuky informatiky** · Petr Vích · KITTV PedF UK · září 2026

Web: https://is-edustack-prezentace.pages.dev

## Obsah

- `index.html` – rozcestník (web / PDF / PPTX / kartičky / scénář).
- `prezentace.html` – webová verze prezentace, 12 slidů 16:9. Šipky / mezerník listování, `N` poznámky řečníka, `F` celá obrazovka, `1–9` skok na slide. Funguje offline.
- `obhajoba-edustack.pptx` – PowerPoint s poznámkami řečníka, `obhajoba-edustack.pdf` – export.
- `docs/karticky.pdf` – 16 kartiček A6 (4 na A4 na šířku): 12 ke slidům, 4 k otázkám z posudků. Zdroj `docs/karticky.html`, text `docs/karticky.md`.
- `docs/scenar.pdf` – osnova, časování a scénář obhajoby. Zdroj `docs/scenar.html`, texty `docs/osnova.md`, `docs/scenar.md`.
- `assets/` – logo.

## Regenerace PDF (kartičky, scénář)

Tiskové PDF vznikají z HTML přes headless Chrome:

```bash
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$PWD/docs/karticky.pdf" "file://$PWD/docs/karticky.html"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$PWD/docs/scenar.pdf"   "file://$PWD/docs/scenar.html"
```

## Nasazení

Statický web bez buildu; kořen repozitáře je kořen webu. GitHub `vichpetr/is-edustack-prezentace`, Cloudflare Pages projekt `is-edustack-prezentace`. Po úpravách stačí `./deploy.sh "popis změny"`.
