# Kartičky k prezentaci – záchrana při zaseknutí

Každá karta má stejnou strukturu: **Kam mířím** (o čem slide je), **Navázat** (věta, kterou lze hned říct a pokračovat), opěrná fakta a čísla, **→ přechod** na další slide. Tisková verze `karticky.pdf` má 6 karet na A4 na šířku (99 × 105 mm), jednu kartu na slide; karty A–D jsou připravené odpovědi na otázky z posudků.

---

## 1 · Titulní (30 s · 0:00–0:30)
**Kam mířím:** Představit sebe, práci a strukturu deseti minut.
**Navázat:** „Dobrý den, jmenuji se Petr Vích a představím svou bakalářskou práci Informační systém pro podporu výuky informatiky.“
- Co vzniklo: **Edu Stack IS** – edukační sandbox, ve kterém žák není uživatel, ale správce fiktivní školy.
- Struktura: odkud myšlenka → cíle → tři principy (didaktika, jeden systém, chyba) → co je uvnitř a jak je to postavené → ověření ve třídě → závěr.
- Rámec hned na začátku: není to technická práce, software je pomůcka, těžiště je didaktické.

→ „Začnu tím, odkud ta myšlenka pochází.“

## 2 · Myšlenka není nová – chyběla realizace (60 s · 0:30–1:30)
**Kam mířím:** Téma existuje od 2007, chyběl nástroj. Vymezit rozsah: ŠIS je vzor, já dělám učební pomůcku.
**Navázat:** „Myšlenka učit o informačních systémech na příkladu školy není nová.“
- **Dostál 2007**: školní IS jako integrovaná agenda školy – matrika, klasifikace, rozvrh, komunikace. Téma je v literatuře.
- Co chybělo: nástroj, kde má **žák plný přístup** a sám spravuje data, role a oprávnění. Tuto mezeru práce vyplňuje.
- Rozsah: nestavím konkurenci Bakalářům či EduPage – to jsou provozní systémy pro administrativu. Já dělám **učební pomůcku**; komerční ŠIS jsou pro mě vzor funkcí.
- Proč škola: žáci ji znají (rozvrh, známky, omluvenky) → nemusím vysvětlovat doménu, ukazuji rovnou vnitřek IS. Funguje i pro mladší žáky.

→ „Z toho plynou tři cíle.“

## 3 · Cíle práce (45 s · 1:30–2:15)
**Kam mířím:** Tři cíle a předpoklad. Motivace: dostat žáka od používání k porozumění.
**Navázat:** „Práce má tři cíle: vymezit, navrhnout a ověřit.“
- **1 Vymezit** kategorii edukačních IS proti třem sousedům: komerční ŠIS (doména školy, ale uzavřené, žák pasivní) · low-code (Airtable, Notion – otevřené, bez domény školy) · výukové platformy (Scratch, Umíme to – algoritmizace, IS okrajově). Kritéria: účel · role žáka · prostředí · otevřenost.
- **2 Navrhnout** prototyp: doménový model věrný škole · otevřený · bezpečně resetovatelný · tři vrstvy hloubky · připravit pracovní listy pro podporu přípravy na výuku.
- **3 Ověřit** ve výuce.
- **Předpoklad**: simulace správy školy dovede žáka od používání k porozumění rolím, oprávněním a datovým tokům. (V textu práce „výzkumná otázka“.)

→ „Nejdřív princip, na kterém všechno stojí.“

## 4 · Systém zůstává, roste žák (90 s · 2:15–3:45)
**Kam mířím:** Jeden software po celou dobu, mění se jen kompetence žáka. Práce je pedagogická, ne technická.
**Navázat:** „Software je pomůcka – podstatné je, co se na něm žák naučí. A ten systém je celou dobu stejný.“
- Text práce: role, procesy, úrovně, úlohy. Technika je v přílohách A (příručka) a B (technická).
- **1. stupeň – uživatelská vrstva** (žák jako uživatel, Bloom: zapamatovat / porozumět): role jako pohled – přihlásím se jako žák / učitel / ředitel, co vidím a co smím; zápis jedné známky.
- **2. stupeň – konfigurační vrstva** (žák jako správce, aplikovat / analyzovat): třídy, předměty, rozvrh s detekcí kolizí, AI asistent, impersonace („vstoupit jako…“).
- **SŠ – vývojářská vrstva** (žák jako spolutvůrce, hodnotit / tvořit): ER diagram, REST / MCP API, vlastní skript, nový modul, šifrování a anonymizace.
- Spirála: tatáž známka se vrací na vyšší úrovni abstrakce. Ke každému stupni pracovní list + klíč (Příloha C).

→ „A proč na to stačí jeden nástroj.“

## 5 · Jeden nástroj pro všechny fáze učení (30 s · 3:45–4:15)
**Kam mířím:** Porovnání výukových nástrojů. Pointa: jeden nástroj = nižší zátěž, více času na obsah.
**Navázat:** „Když se podívám, co se žák naučí o informačním systému v jiných nástrojích…“
- **Drag-and-drop programování** (Scratch, Umíme to): algoritmus a program, ne systém – bez rolí, oprávnění a dat organizace.
- **Modelátory databází** (Airtable, Notion, Coda): tabulky a vazby, ale bez domény školy a rolí.
- **Edu Stack IS**: doména školy, RBAC, viditelný datový model, otevřený kód, blok IS z RVP – a všechny tři fáze v jednom prostředí.
- Pointa: jeden nástroj → žák se neučí nové ovládání, ale nový pohled → **nižší kognitivní zátěž** → více času na role, oprávnění, datové toky.
- Zdroj: srovnávací tabulka v kapitole 5. Nerozvádět.

→ „Aby to fungovalo, musí být dovoleno dělat chyby.“

## 6 · Chyba je přirozená (60 s · 4:15–5:15)
**Kam mířím:** Chyba je výhoda výuky, ne riziko – díky fiktivním datům a resetu.
**Navázat:** „Druhý princip je práce s chybou.“
- Jen **fiktivní data** → žádné GDPR riziko; učitel vygeneruje školu na pár kliků (stovky záznamů).
- Každá cvičná škola má **oddělený datový prostor** (multitenance); po hodině reset do výchozího stavu.
- Omylem smazaný žák nebo záměrná kolize v rozvrhu = materiál k diskusi: *proč to šlo? kdo to mohl? co se ztratilo?*
- Pilotáž: kolize v rozvrhu byla tématem diskuse, ne problémem.
- Pointa: bez bezpečného resetu nemohu říct „zkus to rozbít“ – a právě to nejlépe odhaluje, jak systém funguje.

→ „Co konkrétně v systému žák potká.“ · **Čas: jsem pod 5:30?**

## 7 · Role a datové domény (40 s · 5:15–5:55)
**Kam mířím:** Shrnutí, co je uvnitř: 6 rolí, 8 domén, viditelné vazby.
**Navázat:** „V systému je šest rolí a každá učí něco jiného.“
- **Role**: administrátor (provoz více škol, tajné klíče) · ředitel (pohled shora) · zástupce (rozvrh, suplování, kolize) · učitel (známky, třídní kniha – odpovědnost za data) · rodič (co komu systém ukazuje) · žák (nejnižší role – co smím vidět a co ne).
- **Data**: 40+ tabulek, didakticky v 8 doménách, každá s otázkou – identita („Jak systém ví, kdo jsem?“), akademická struktura, úvazky a prostory, rozvrh a třídní kniha, docházka a klasifikace, plánování a materiály, komunikace, systém a AI.
- Vazby jsou vidět: nový předmět → rozvrh → klasifikace → úvazek.

→ „Rychle k tomu, jak je to postavené.“

## 8 · Jak je systém postavený (35 s · 5:55–6:30)
**Kam mířím:** Technický popis v jednom obrázku, moduly. Detaily až v dotazech.
**Navázat:** „Technicky jen stručně – detaily rád v dotazech.“
- Prohlížeč → **frontend** React + Vite (Cloudflare Pages) → **backend** NestJS REST API (RBAC guard, audit) → **SQLite**, čisté SQL (better-sqlite3).
- **AI mimo jádro**: MCP server vystavuje nástroje LLM (Gemini, OpenAI), běží jen na loopbacku → žák vidí, že AI je oddělená služba, ne kouzelná část databáze.
- Monorepo čitelné pro SŠ · multitenance · **Nasazení**: cloud (Fly.io + Cloudflare) i lokálně bez internetu · **Bezpečnost**: Argon2, šifrované sloupce, SSO.
- Na dotaz: „mohu ukázat v příloze B“.

→ „A teď to podstatné – co se stalo ve třídě.“

## 9 · Ověření ve výuce (60 s · 6:30–7:30)
**Kam mířím:** Čísla z pilotáže a co znamenají. Hlavní: prožitek role vede k pochopení oprávnění.
**Navázat:** „Systém jsem ověřil v jedné hodině s deváťáky.“
- 16 žáků 9. třídy, 1 hodina, role zástupce ředitele a učitel, 3 pracovní listy (matrika, rozvrh, AI asistent), dotazník + řízená diskuse.
- **15/16** aspoň částečně vysvětlilo, proč žák nevidí stejná data jako učitel (10 plně, 5 částečně) → RBAC pochopili prožitkem, ne výkladem.
- **14/16** chce pokračovat · vzhled medián **9,5** · snadnost **9,0** (škála 1–10).
- Bavily známky (8) a AI asistent (6): „učesání“ slovního hodnocení otevřelo češtinu i etiku.
- Technicky: 13 přihlášení hned, žádný pád, 2 věcné podněty (editace hodnocení, signalizace čekání na AI); 1 protestní odpověď v datech ponechána a komentována.

→ „Čísla jsou jedna věc – druhá je, jaké to bylo.“

## 10 · Zkušenost z hodiny (60 s · 7:30–8:30)
**Kam mířím:** Subjektivní hodnocení začínajícího učitele. Strach klikat je argument pro sandbox, ne proti.
**Navázat:** „Byla to moje první hodina s dětmi ve škole.“
- Mentoroval jsem dospělé, roky vedl skautský oddíl; jako učitel ve škole poprvé.
- Systém plní, k čemu byl navržen: přihlášení, matrika, známky, AI, diskuse o oprávněních.
- Jedna hodina nestačí na plný potenciál: třída na tento styl nebyla zvyklá, vysvětlování zabralo víc času než úlohy.
- Žáci se **báli klikat**, „aby něco nezkazili“ → paradox: sandbox je tu proto, aby se bát nemuseli, ale tu jistotu si musí nejdřív odžít.
- Poučení: krátká úvodní hodina „nic nezkazíš“; rozvrh (2. list) až do další hodiny.

→ „Shrnu.“

## 11 · Závěr (45 s · 8:30–9:15)
**Kam mířím:** Rekapitulace, otevřený kód a doprovodný web, pointa, poděkování.
**Navázat:** „Shrnuto: vymezil jsem kategorii, postavil prototyp a ověřil ho ve výuce.“
- Nová kategorie: edukační IS – doménově věrný, otevřený, sandboxový, vícevrstvý.
- Prototyp Edu Stack IS + 3 pracovní listy s klíčem pro učitele + dotazníky. Pilotáž předpoklad podpořila.
- Další rozvoj: SŠ a 1. stupeň, více škol, listy k bezpečnosti / GDPR, mobilní rozhraní, komunita učitelů.
- Kód je **otevřený na GitHubu** (github.com/edustack-is), k systému je doprovodný web **is-edustack.org** s dokumentací pro učitele.
- Závěrečná věta (pomalu): **„Informační systém nemusí být ve škole jen administrativní nutnost – může být pomůcka, na které si žák digitální svět sám postaví.“** „Děkuji za pozornost.“

→ Pak posudky: čárky ke 4 tématům (SŠ, kurikulum, dotazník, MCP). Karta 12 a A–D.

## 12 · Limity a reakce na posudky (záložní · po posudcích)
**Kam mířím:** Přiznat limity jako první. Slide ukázat jen, když to diskusi pomůže.
**Navázat:** „Limity práce vidím čtyři – a oba posudky je pojmenovaly.“
- **Jen 2. stupeň** → návrh: SŠ pilotáž na odborné škole (3. list: ER, API); 1. stupeň zkrácený list; přesný popis vzorku, ročníku, podmínek.
- **Kurikulum**: stavím na RVP ZV; RVP G a SOV zaslouží samostatnou analýzu; mapování materiálů je typologické.
- **Dotazník**: správně „vlastní strukturovaný“, ne „standardizovaný“. Pedagogický dotazník připraven, výsledky nejsou prezentovány.
- **MCP rozpor**: autorizaci vynucuje backend – MCP nástroj volá REST API s oprávněními uživatele dané AI relace; MCP vrstva sama guard nemá. Formulaci v klíči sjednotím.

→ Model odpovědi: „Ano, to platí. Udělal bych X.“ Detaily na kartách A–D.

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
