# Kartičky k prezentaci (co říct, ne co číst)

Formát: **hlavní myšlenka** · opěrné body · věta na přechod k dalšímu slidu.
Doporučení: vytisknout na A6, jednu kartu na slide. Nečíst – jen sledovat opěrné body.

---

## 1 · Titulní (30 s)
**Kdo jsem a co jsem udělal.**
- „Petr Vích, Informační systém pro podporu výuky informatiky.“
- Jedna věta: *Edu Stack IS – edukační sandbox, kde žák není uživatel, ale správce fiktivní školy.*
- Struktura: východiska → cíle → tři principy → krátce technika → ověření → limity.

→ „Začnu tím, odkud ta myšlenka pochází.“

## 2 · Myšlenka není nová (60 s)
**Téma existuje od 2007, realizace chyběla.**
- Dostál 2007: školní IS jako integrovaná agenda školy – matrika, klasifikace, rozvrh, komunikace.
- Co v literatuře ani praxi není: nástroj, kde má **žák plný přístup** a sám spravuje data, role, oprávnění.
- Bakaláři, EduPage, Škola OnLine = **vzor funkcí, ne konkurence**.
- Proč vzor: žáci (i na 1. stupni) vědí, jak škola funguje → nemusím vysvětlovat doménu, ukazuji rovnou vnitřek IS.

→ „Z toho plynou tři cíle.“

## 3 · Cíle (45 s)
**Vymezit – navrhnout – ověřit.**
1. Vymezit kategorii edukačních IS (4 kritéria: provozní/edukační, pasivní/aktivní, produkce/sandbox, uzavřený/otevřený).
2. Navrhnout prototyp: věrný škole, otevřený, resetovatelný, tři vrstvy + pracovní listy.
3. Ověřit ve výuce.
- Výzkumná otázka: lze simulací správy školy dovést žáka od používání k porozumění rolím, oprávněním a datovým tokům?

→ „Než ukážu systém, chci říct, co práce **není**.“

## 4 · Software je pomůcka (60 s)
**Není to technická práce.**
- Hlavní text = didaktika (role, procesy, úrovně, úlohy). Technika = přílohy A, B.
- Bloom: komerční ŠIS drží žáka u *zapamatovat/porozumět* (čte cizí známku).
- Edu Stack IS: *aplikovat/analyzovat* (založí třídu, řeší kolizi) → *hodnotit/tvořit* (navrhne modul, čte ER diagram).
- Konstruktivismus: porozumění vzniká stavěním a správou něčeho, co dává smysl – simulovaná škola je takový artefakt.

→ „Aby to fungovalo, musí být dovoleno dělat chyby.“

## 5 · Chyba je přirozená (60 s)
**Chyba je úloha, ne riziko.**
- Jen fiktivní data → žádné GDPR riziko; učitel vygeneruje školu jedním klikem.
- Multitenance + reset: každá třída vlastní instance, po hodině do výchozího stavu.
- Omylem smazaný žák / záměrná kolize v rozvrhu = materiál k diskusi: *proč to šlo? kdo to mohl? co se ztratilo?*
- V pilotáži potvrzeno: kolize v rozvrhu byla tématem, ne problémem.
- Pointa: bez bezpečného resetu nemohu žáka vyzvat „zkus to rozbít“ – a to systém odhaluje nejlépe.

→ „Třetí princip: není to tři aplikace, ale jedna.“

## 6 · Jeden systém pro všechny (60 s)
**Systém zůstává, mění se kompetence žáka v čase.**
- 1. stupeň – uživatelská vrstva: role jako pohled (žák/učitel/ředitel – co vidím, co smím).
- 2. stupeň – konfigurační vrstva: třídy, předměty, rozvrh s detekcí kolizí, AI asistent, impersonace.
- SŠ – vývojářská vrstva: ER diagram, REST/MCP API, vlastní skript, nový modul, šifrování/anonymizace.
- Spirálové kurikulum: tatáž známka se vrací na vyšší úrovni abstrakce.
- Ke každému stupni pracovní list + metodika + klíč pro učitele (Příloha C).

→ „Co konkrétně v systému žák potká.“

## 7 · Role a domény (45 s)
**6 rolí, 8 domén, viditelné vazby.**
- Každá role = vzdělávací příležitost (admin: tajné klíče; zástupce: kolize; učitel: odpovědnost za data; rodič: co komu ukazovat).
- 40+ tabulek didakticky rozděleno do 8 domén, každá má výukovou otázku („Jak systém ví, kdo jsem?“).
- Vazby viditelné: nový předmět → rozvrh → klasifikace → úvazek.

→ „Rychle k tomu, jak je to postavené.“

## 8 · Architektura (45 s) — RYCHLE
**Jeden obrázek, detaily do dotazů.**
- React + Vite (Cloudflare Pages) → NestJS REST API (RBAC guard, audit) → SQLite, čisté SQL (better-sqlite3).
- AI mimo jádro: MCP server vystavuje nástroje LLM, jen loopback → „AI není kouzelná část databáze“.
- Monorepo (čitelné pro SŠ), multitenance, cloud (Fly.io + Cloudflare) i lokálně bez internetu.
- Argon2, šifrované sloupce, SSO.

→ „A teď to podstatné – co se stalo ve třídě.“

## 9 · Ověření (60 s)
**Prožitek role vede k pochopení oprávnění.**
- 16 žáků 9. třídy, 1 hodina, role zástupce ředitele a učitel, 3 pracovní listy, dotazník + řízená diskuse.
- **15/16** aspoň částečně vysvětlilo, proč žák nevidí stejná data jako učitel (10 plně, 5 částečně).
- **14/16** chce pokračovat. Vzhled medián **9,5**, snadnost **9,0**.
- Bavily známky (8) a AI asistent (6) – „učesání“ hodnocení otevřelo češtinu i etiku.
- 13 přihlášení hned, žádný pád, 2 věcné podněty; 1 protestní respondent v datech ponechán a komentován.

→ „Čísla jsou jedna věc – druhá je, jaké to bylo.“

## 10 · Zkušenost z hodiny (60 s) — OSOBNĚ
**První výuka dětí – a co jsem se naučil.**
- Mentoroval jsem dospělé, roky ve skautu; ve škole poprvé.
- Systém plní, k čemu byl navržen – přihlášení, matrika, známky, AI, diskuse.
- Ale: za jednu hodinu plný potenciál nevyužiješ – třída na tento styl není zvyklá, vysvětlování zabralo víc než úlohy.
- Žáci se **báli klikat**, aby něco nezkazili → paradox: sandbox je tu proto, aby se nebáli, ale jistotu si musí odžít.
- Poučení: krátká úvodní hodina „nic nezkazíš“; rozvrh (2. list) do další hodiny.

→ „Z toho plynou i limity, které chci pojmenovat sám.“

## 11 · Limity a posudky (55 s)
**Říct to dřív, než se komise zeptá.**
- Ověření jen 2. stupeň → návrh: SŠ pilotáž na odborné škole (3. list: ER, API); 1. stupeň zkrácený list; přesný popis vzorku, ročníku, podmínek.
- Kurikulum: stavím na RVP ZV; RVP G a SOV zaslouží samostatnou analýzu; mapování materiálů je typologické.
- Dotazník: správně „vlastní strukturovaný“, ne „standardizovaný“. Pedagogický dotazník připraven, výsledky nejsou prezentovány.
- MCP rozpor: autorizaci vynucuje **backend** – MCP nástroj volá REST API s oprávněními uživatele dané AI relace; MCP vrstva sama guard nemá. Formulaci v klíči sjednotím.

→ „Shrnu.“

## 12 · Závěr (20 s)
- Nová kategorie: edukační IS. Prototyp + 3 listy + dotazníky. Pilotáž potvrdila hypotézu.
- Další rozvoj: SŠ, 1. stupeň, více škol, listy k bezpečnosti/GDPR, PWA, komunita učitelů.
- „IS nemusí být administrativní nutnost – může být pomůcka, na které si žák digitální svět sám postaví. Děkuji.“

---

# Otázky z posudků – připravené odpovědi

**Oponent: Pilotáž jen na 2. stupni. Jak ověřit 1. stupeň a SŠ? Co změnit v metodice?**
- SŠ: odborná škola / seminář informatiky, 3. pracovní list (ER diagram, REST/MCP z vlastního skriptu, návrh modulu). Předem popsat ročník, věk, výběr skupiny, délku, techniku, předchozí zkušenost. Sledovat splnění úloh + krátký test porozumění, ne jen dojem.
- 1. stupeň: 4.–5. třída, zkrácený list „role jako pohled“, jen uživatelská vrstva; hodnotit prožitkem a diskusí, ne dotazníkem.
- Metodika: úvodní kratší hodina o sandboxu („nic nezkazíš“), úlohy rozložit do 2–3 hodin, pedagogický dotazník skutečně vyhodnotit, doplnit nezávislého pozorovatele.

**Vedoucí: Jak upravit testování pro SŠ?** → viz výše + spolupráce s učitelem odborné školy, který zná úroveň; možnost lokální instance na notebooku bez internetu.

**Vedoucí: Které funkce jsou didakticky nejpřínosnější a proč?**
1. **Vstoupit jako…** (impersonace) – tatáž obrazovka jako žák/učitel/ředitel = nejrychlejší cesta k pochopení RBAC (potvrzeno pilotáží 15/16).
2. **Zakládání rodiče jako samostatné identity** – relační vazba a GDPR na konkrétním příkladu.
3. **Detekce kolizí v rozvrhu** – omezení a algoritmické myšlení, viditelný důsledek rozhodnutí.
4. **AI asistent jako oddělená služba** – demystifikace AI + mezipředmětovost (čeština, etika).

**Vedoucí: Bezpečnostní a etická rizika AI ve školním IS a jak je systém omezuje?**
- Rizika: únik osobních dat do LLM, halucinace v hodnocení, nadměrná důvěra žáků, zneužití impersonace, cena/spotřeba tokenů, závislost na externím poskytovateli.
- Omezení: AI jen přes MCP server na loopbacku; každý nástroj volá backend s oprávněními uživatele dané relace (RBAC vynucuje backend); API klíče šifrované; evidence spotřeby tokenů; jen fiktivní data v sandboxu; výstup AI je návrh, který učitel schvaluje; téma je součástí listů (odpovědnost za strojový text).

**Rozpor B.6 vs. C.28 (RBAC v MCP):** správně je verze z B.6 – MCP vrstva sama guard nemá, ale nezapisuje „přímo do DB“ bez kontroly: prochází přes backend s oprávněními uživatele. Formulaci v klíči listu opravím.

**Reprodukovatelnost (git clone <repo>):** uvést konkrétní URL repozitáře, tag/commit odevzdané verze a přehled automatizovaných testů – doplním do errata / při dalším rozvoji.
