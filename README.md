# Edu Stack IS – prezentace k obhajobě bakalářské práce

**Informační systém pro podporu výuky informatiky** · Petr Vích · KITTV PedF UK · září 2026

Web: https://obhajoba.is-edustack.org

## Obsah

- `index.html` – rozcestník (web / PDF / PPTX / kartičky / scénář / osnova).
- `prezentace.html` – webová verze prezentace, 12 slidů + 1 doplňující (limity, k reakci na posudky), 16:9. Šipky / mezerník listování, `N` poznámky řečníka, `F` celá obrazovka, `1–9` skok na slide. Funguje offline.
- `obhajoba-edustack.pptx` – PowerPoint s poznámkami řečníka, `obhajoba-edustack.pdf` – export.
- `docs/karticky.pdf` – 17 kartiček 99 × 105 mm (6 na A4 na šířku, 3 strany): 13 ke slidům (kam mířím, věta na navázání, opěrná fakta, přechod), 4 k otázkám z posudků. Zdroj `docs/karticky.html`, text `docs/karticky.md`.
- `docs/scenar.pdf` – osnova, časování a scénář obhajoby. Zdroj `docs/scenar.html`, texty `docs/osnova.md`, `docs/scenar.md`.
- `docs/osnova.html` – osnova jako webová stránka s odkazy na jednotlivé slidy.
- `assets/` – logo.

## Regenerace PDF (kartičky, scénář)

Tiskové PDF vznikají z HTML přes headless Chrome:

```bash
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$PWD/docs/karticky.pdf" "file://$PWD/docs/karticky.html"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="$PWD/docs/scenar.pdf"   "file://$PWD/docs/scenar.html"
```

## Export PPTX do PDF

```bash
/Applications/LibreOffice.app/Contents/MacOS/soffice --headless --convert-to pdf --outdir . obhajoba-edustack.pptx
```

## Nasazení

Statický web bez buildu; kořen repozitáře je kořen webu. GitHub `edustack-is/is-edustack-prezentace`, Cloudflare Worker `is-edustack-prezentace` (statické soubory, Workers Builds) na účtu petr@petrvich.work, doména https://obhajoba.is-edustack.org.

- `wrangler.jsonc` říká, že se nasazuje adresář `./` jako statické soubory; `.assetsignore` vyjmenovává, co se servírovat nemá (`.git`, README, skripty).
- Push do `main` nasadí produkci, push do jiné větve / PR vytvoří preview.
- Po úpravách stačí `./deploy.sh "popis změny"`.
