#import "@preview/mitex:0.2.7": *
#import "@preview/physica:0.9.8": *
#import "@preview/chemformula:0.1.3": *

= Štruktúra záverečnej práce <sec:StrukturaPrace>
Za záverečnú prácu považujeme bakalársku, diplomovú
a~dizertačnú prácu @zakon1312002.
Práca napísaná v~slovenskom jazyku má tieto časti @vyhlaska2332011 @usmernenie562011:

+ Úvodná časť
  + obal
  + titulný list
  + zadanie
  + poďakovanie (nepovinné)
  + abstrakt v slovenskom jazyku
  + abstrakt v anglickom jazyku
  + obsah
  + zoznam ilustrácií, obrázkov (nepovinné)
  + zoznam tabuliek (nepovinné)
  + zoznam skratiek a značiek (odporúčané)
+ Hlavná textová časť
  + úvod
  + jadro
    - súčasný stav riešenej problematiky doma a v zahraničí
    - cieľ práce
    - metodika práce a metódy skúmania
    - výsledky práce
    - diskusia
  + záver
  + zoznam použitej literatúry
+ Záverečná časť
  + dodatky (podľa potreby)
  + prílohy (podľa potreby)

== Úvodná časť práce
Hlavným obsahom úvodnej časti sú formálne náležitosti práce a musia byť zaradené v~poradí podľa zoznamu v~úvode tejto kapitoly.

=== Obálka, titulný list, zadanie
Začiatočné stránky práce automaticky generuje univerzitný
informačný systém AIS vo formáte PDF.
Môžeme ich do záverečnej práce vložiť pomocou príkazu `\includepdf` z~balíčka `pdfpages`
alebo využijeme makrá `FEIcover` a~`FEItitle` na vytvorenie obálky a prvej
stránky práce.
Aby boli všetky informácie aktuálne,
treba venovať pozornosť vyplneniu údajových
premenných v~úvode hlavného súboru `thesis.tex`. @GSM

Zadanie odporúčame vložiť pomocou spomínaného makra
`\includepdf` tak, že najprv uložíme PDF súbor
so zadaním do priečinka `includes` a prepíšeme
názov súboru v argumente makra.

=== Poďakovanie
Nepovinná, ale veľmi obľúbená časť práce.
Je umiestnené na samostatnej strane zväčša v~dolnej časti.
Jej obsah je ponechaný na autora.
Obsah poďakovania sa nachádza v~súbore
`includes/thanks.tex` a~sadzbu má na starosti
príkaz `\FEIthanks`.

=== Slovenský a anglický abstrakt

Definícia abstraktu vychádza z technickej normy STN ISO 214 Dokumentácia.
Abstrakty (referáty) pre publikácie a dokumentáciu @iso214.
Termín abstrakt je skrátené, presné vyjadrenie obsahu
bez pridanej interpretácie a kritiky.
Mal by poskytovať čo najviac informácií obsiahnutých v~dokumente.

Abstrakt si netreba zamieňať s termínmi anotácia,
extrakt alebo rezumé.
Anotácia je stručná poznámka, alebo vysvetlenie,
prípadne veľmi stručný opis dokumentu alebo jeho obsahu.
Extrakt predstavuje časti dokumentu vybratých
na reprezentáciu celku.
Rezumé obsahuje stručné zopakovanie významných prínosov
a~záverov v práci.
Nachádza sa zvyčajne na konci dokumentu
a~slúži na doplnenie orientácie čitateľa,
ktorý študoval predchádzajúci text.
Ak je práca napísaná v~anglickom jazyku,
musí obsahovať rezumé v~slovenčine.
V~slovenskej práci nemusí byť rezumé.

==== Účel a použitie abstraktov

- _„Dobre vypracovaný abstrakt umožní čitateľom identifikovať
  základný obsah dokumentu, rýchlo a presne stanoviť jeho
  relevanciu, a tak sa rozhodnúť, či potrebujú čítať celý
  dokument."_

- _„Čitatelia, pre ktorých predstavuje dokument len okrajový
  záujem, často získajú z~abstraktu dostatok informácií a nemusia
  čítať celý dokument."_

- _„Abstrakty sú často cenné aj pri automatickom vyhľadávaní
  v~plných textoch na získanie predbežných informácií a na
  informačný prieskum."_

#align(right)[(Citované z normy STN ISO 214 @iso214)]

Podľa metodického usmernenia Ministerstva školstva, vedy, výskumu a športu SR č. 56/2011 (čl. 1, ods. 1)
_„abstrakt obsahuje informáciu o cieľoch práce,
jej stručnom obsahu a~v~závere abstraktu
sa charakterizuje splnenie cieľa,
výsledky a~význam celej práce.
Súčasťou abstraktu je 3 -- 5 kľúčových slov.
Abstrakt sa píše súvisle ako jeden odsek a jeho rozsah je
spravidla 100 až 500 slov"_ @usmernenie562011.

Text slovenského a~anglického abstraktu sa nachádzajú
v~súboroch `attachment.tex` a~`attachmentEN.tex` v~priečinku `includes`.

Do dokumentu ich vložia makrá šablóny
`\FEIabstract` a~`\FEIabstractEN`
v~hlavnom súbore `thesis.tex`.
Každé makro má jeden povinný parameter --
cesta a~názov súboru s~textom abstraktu.
Makrá zároveň vytlačia pod abstrakty
v každom jazyku zoznam kľúčových slov.

=== Obsah a zoznamy

Obsah je povinný prehľad jednotlivých kapitol
a~častí práce s~uvedením nadpisov a~strán.
Začína na samostatnej stránke ako nová kapitola
s~nadpisom Obsah bez číslovania,
ktorý sa ale v~samotnom prehľade kapitol nezobrazí.

V~LaTeX-u zabezpečuje generovanie obsahu príkaz `\tableofcontents`,
ktorý v~mieste použitia vloží automatický zoznam kapitol s~číslami strán.
Obsah vytvára na základe použitia nadpisov `\section`,
`\subsection` a `\subsubsection`.
Toto makro vytvorí v~pracovnom adresári pomocný textový súbor
s~príponou .toc a~na základe neho generuje finálnu podobu obsahu.
Z~toho dôvodu je potrebné kompilátor LaTeX-u
spustiť minimálne dvakrát za sebou.

V tejto šablóne má na starosti vytvorenie obsahu makro `\FEIcontent`.

#heading(level: 3, outlined: false, numbering: none)[Zoznam ilustrácií, obrázkov a tabuliek]

Sú to nepovinné prehľady tzv. plávajúcich objektov.
LaTeX pozná na tento účel dva príkazy: `\listoffigures` a~`\listoftables`.
Šablóna FEIstyle ponúka alternatívne makrá `\FEIlistOfFigures` a~`\FEIlistOfTables`,
ktoré okrem toho nastavia požadovaný typ stránky bez číslovania.

Zvlášť užitočný je príkaz `\FEIlistOfFiguresAndTables`.
Vytvorí totiž spojený zoznam obrázkov a tabuliek s jedným nadpisom.

Ak zoznamy v práci nechceme, môžeme príslušné príkazy z~hlavného súboru
`thesis.tex` vymazať alebo ich označiť ako komentár.

#heading(level: 3, outlined: false, numbering: none)[Zoznam skratiek a značiek]

V textových výstupoch vedecko-technických odborov sa používa
množstvo značiek a~skratiek najmä na označenie fyzikálnych
veličín v matematických vzťahoch,
ale aj zostručnenie textového prejavu najmä pri zložitých názvoch
vedeckých metód, zariadení alebo javov.
Sú to napríklad RTG (röntgenové žiarenie),
AFM (mikroskop atómových síl),
TEM (transmisný elektrónový mikroskop),
IR (infračervené žiarenie),
AC (obvod striedavého prúdu) a~mnoho iných.
Ak sa v práci objavia, musí ich autor pri ich prvom výskyte
jasne zadefinovať,
prípadne vysvetliť anglický preklad.
Rovnako to platí pre všetky použité fyzikálne veličiny.

Aj keď je tento zoznam nepovinná súčasť práce,
odporúčame ho zaradiť kvôli lepšej orientácii čitateľa.
Zoznam má podobu slovníka,
značky uvádzame v~abecednom poradí.

Šablóna ponúka dva spôsoby vytvorenia zoznamu a~práce so skratkami a~značkami v~texte.

+ Použitie nástrojov balíka `glossary` umožňuje plne automatickú kontrolu nad veľkým množstvom skratiek. Skratky treba najprv definovať v externom súbore `glossary.tex` a~potom ich môžeme v práci používať dvomi spôsobmi. Pri prvom výskyte použijeme skratku aj s~jej opisom, čo zariadi príkaz `acrfull`.
  Pri ďalších výskytoch v texte už stačí používať iba skrátený tvar pomocou príkazu `acrshort`.

  Po prvom skompilovaní je potrebné spustiť externý program `makeglossaries` a~text skompilovať znova, prípadne kvôli správnemu radeniu strán v~obsahu, treba kompiláciu spustiť aj tretíkrát.
  Podobná procedúra sa vyžaduje aj pri práci s~citáciami v systéme BibLaTeX.
  Makro `\FEIlistOfGlossaries` vytvorí abecedne zoradený zoznam.

  Ak sa rozhodneme pre túto možnosť,
  treba v hlavnom súbore `thesis.tex` odstrániť
  znak komentára pred príkazmi
  `\FEIglossaries{includes/glossary}`
  a~`\FEIlistOfGlossaries`. Pozor, tieto dva
  riadky sa v súbore `thesis.tex`
  nachádzajú na rôznych miestach.
  Nepremiestňujeme ich.

  Balík `glossaries` je nesporne praktická pomôcka, plnohodnotne však funguje iba v anglickom jazyku.
  Pri jeho používaní narazíme na problém so skratkami, ktoré pochádzajú z anglických slov.
  V slovenskom texte však musíme používať ich terminologické ekvivalenty.
  Aj keď si nakoniec vytvoríme slovenský zoznam skratiek, ich automatické použitie bude limitované pri skloňovaní alebo časovaní jednotlivých výrazov.

  Viac sa o možnostiach balíka dozvieme z tutoriálu na stránke #link("https://www.ctan.org/pkg/glossaries")[www.ctan.org/pkg/glossaries]

+ Skratky zadáme manuálne.
  Automatické riešenie v predchádzajúcom bode úplne zlyháva pri práci s veličinami, ktorých zoznam predstavuje praktickú pomôcku najmä vo fyzikálnych a~matematických oblastiach techniky. Na označovanie veličín používame rôzne symboly a ich modifikácie, napríklad písmená gréckej abecedy ($alpha, omega, xi$), symboly so šípkami v prípade vektorov ($vec{r}, vec{phi}, vec{i}$), preškrtnuté h ($hbar$), zdvojené symboly ako $ZZ$, prípadne aj niečo takéto: $aleph_0$, čo je hebrejské písmeno alef.

  Súbor `manual_glossary.tex` obsahuje príklad, ako by mohol takýto ručne vyrobený zoznam vyzerať.
  Makro
  `\FEImanualListOfGlossaries`, ktorého parameter je cesta a názov spomínaného súboru, zariadi samotnú sadzbu.
  Zoznam si môžeme postupne vytvárať pri písaní a~udržiavať ho v abecednom poradí.

#heading(level: 3, outlined: false, numbering: none)[Zoznamy algoritmov a výpisov kódov programov]

Tieto typy zoznamov vytvoria makrá `\FEIlistOfAlgorithms`, `\FEIlistOfListings` a~sú špecifické pre informatické odbory.

Ak v práci nemáme výpisy kódov alebo algoritmy,
bude potrebné riadky s týmito príkazmi vymazať alebo označiť ako komentár. O~uvádzaní častí kódov
a~zápisov algoritmov píšeme v
// kapitole @sec:listings.

== Hlavná textová časť

Samotný autorský obsah práce začína až tu.
Tradične text členíme na úvod, jadro a~záver,
pričom úvod a~záver sú samostatné kapitoly,
ktoré nečíslujeme a~je vhodné,
ak ich označíme nadpismi _Úvod_ a _Záver_.
Strednú časť -- jadro -- neoznačujeme.

=== Úvod

Prvá kapitola hlavnej časti práce má názov úvod, nečíslujeme ju.
Ide o~ucelený text v~rozsahu niekoľkých súvislých odsekov textu,
v~ktorých stručne a~výstižne charakterizujeme stav poznania
a~praxe v~danej oblasti,
oboznámime čitateľa s~cieľmi a~závermi práce.
Nosnou myšlienkou úvodu okrem uvedenia čitateľa do problematiky
je jasná motivácia autora a~jeho postoje,
ktoré viedli k~spracovaniu témy práce @GSM.

Nepísané pravidlo hovorí,
že úvod a~záver práce sa píšu až ako posledné.
Tento poznatok vyplýva z~praxe a~má dva dôvody:
1. na začiatku nemusí byť úplne zrejmé, čo všetko sa v~práci naozaj objaví;
2. úvod predstavuje samostatnú literárnu formu,
na ktorej sa neskúsený autor zasekne už na začiatku.
Aby sme sa tomu vyhli,
necháme si jeho napísanie až na záver,
keď už bude väčšina hlavného obsahu práce hotová.

Text úvodu sa nachádza v súbore `includes/introduction.tex`
a~jeho sadzbu zariadi makro `\FEIintroduction{includes/introduction}`.

=== Jadro

Táto časť práce _nezačína_ nadpisom _Jadro_.
Obsah jadra členíme zvyčajne na niekoľko číslovaných
kapitol počínajúc číslom 1.
Prvá kapitola býva prehľad súčasného stavu problematiky,
ale môže mať aj iný názov,
napríklad _Teoretická časť,_ alebo rovno názov oblasti,
o~ktorej sa v nej bude písať
(trebárs _Metóda prenosových matíc_).

Pri písaní strednej časti práce nemusíme postupovať úplne
striktne podľa tohto návodu.
Treba však pamätať na to,
aby sme jasne oddelili poznatky,
ktoré pochádzajú od iných autorov,
a~sú súčasťou všeobecného prehľadu,
od poznatkov a~výsledkov samotnej práce autora.
Nemusia byť oddelené fyzicky v~rôznych odsekoch,
či kapitolách, z~textu však musí byť jasné,
ktoré výsledky sú originálne a~ktoré sú prebrané.
Odporúčaná štruktúra tejto časti je na
strane~<@sec:StrukturaPrace>.

Samotný obsah jadra sa nachádza v~súbore `includes/core.tex`.
Do hlavného dokumentu `thesis.tex` ho načíta makro `\FEIcore{includes/core}`.
Parameter makra je názov súboru bez prípony.
Ak je `core.tex` príliš obsiahly,
môžeme jednotlivé kapitoly uložiť do samostatných
súborov a tie načítať do `core.tex`
pomocou TeXového príkazu `\input`.

#heading(level: 3, outlined: false, numbering: none)[Súčasný stav riešenej problematiky doma a~v~zahraničí]

Podľa zvyklostí by malo približne 30% práce obsahovať prehľad
súčasného stavu a~poznatkov v~oblasti,
ktorej sa týka predkladaná práca.
Ide o~veľmi dôležitý aspekt,
ktorým študent preukáže,
že je schopný problematiku naštudovať,
porozumieť jej a~napísať o~nej súvislý text.
Dokáže na základe existujúcich poznatkov vysvetliť javy,
ktoré v~práci študuje.

Kľúčová činnosť pri príprave textu je štúdium prác publikovaných
u~nás a~v~zahraničí.
Nejde iba o~to, že autor píše myšlienky, ktoré sa kdesi dozvedel,
mal by tiež poznať ich primárne zdroje,
správne s~nimi pracovať a~citovať ich.
Dôležitý prínos študenta spočíva v~spájaní viacerých poznatkov
z~rôznych zdrojov do nového celku.

#heading(level: 3, outlined: false, numbering: none)[Cieľ práce]

Bakalárska a diplomová práca má jasne uvedené ciele v zadaní práce. Nie je preto nutné uvádzať samostatnú kapitolu, kde budú ciele ešte raz vymenované. Je však žiadúce, ak sa zmienka o jednotlivých cieľoch v texte vyskytuje a poukazuje sa na ich splnenie, nesplnenie, prípadne ak hlavné ciele pozostávajú z čiastkových cieľov, treba ich jasne špecifikovať.

#heading(level: 3, outlined: false, numbering: none)[Metodika práce a metódy skúmania]

V experimentálnych prácach býva v tejto časti podrobne zdokumentované prístrojové vybavenie, riadiaci a simulačný softvér, laboratórne podmienky a podobne. Metodické usmernenie @GSM odporúča nasledujúci obsah tejto časti práce: a) charakteristika objektu skúmania, b) pracovné postupy, c) spôsob získavania údajov a ich zdroje, d) použité metódy vyhodnotenia a interpretácie výsledkov, e) štatistické metódy.

#heading(level: 3, outlined: false, numbering: none)[Výsledky práce a diskusia]

Študent zaujme k získaným výsledkom jasné postoje,
porovnáva ich s inými autormi, prípadne navrhuje ich ďalšie aplikácie.
Zhodnotí a~komentuje ich na základe štatistického spracovania dát (smerodajné odchýlky, priemery, regresie a podobne).
Odporúčame, aby táto časť tvorila 30 až 40 percent záverečnej práce.
Môžeme ju rozdeliť na dve samostatné podkapitoly: sumarizáciu výsledkov a~diskusiu formou eseje.

=== Záver

Záver práce predstavuje samostatnú nečíslovanú kapitolu
v~rozsahu niekoľkých odsekov alebo strán.
Obsahuje zhrnutie výsledkov vo vzťahu k~stanoveným cieľom~@GSM.
Rovnako, ako pri úvode, treba si dať
aj na kompozícii záveru zvlášť záležať.
Väčšina čitateľov si prečíta v~prvom rade úvod a~záver práce,
aby zistili, či im stojí za to pustiť sa do podrobnejšieho
štúdia celého textu.
Aj oponent vychádza najmä z dobre spracovaného záveru.

Jasne deklarujeme splnenia cieľov a naznačíme ďalšie možné smerovanie študovanej problematiky. Vyjadrujeme sa pozitívne. Ak sa nepodarilo úplne naplniť niektorú z~pôvodných predstáv, nerozpisujeme sa o tom.

Ako príklad použijeme nepríjemnú modelovú situáciu,
ktorá môže počas výskumu nastať.
Povedzme, že cieľ záverečnej práce bol odmerať
optické parametre tenkých TiO$\_2$ vrstiev.#footnote[TiO$\_2$ je chemická značka oxidu titaničitého,
  ktorý sa používa napríklad pri solárnych článkoch
  ako priehľadná vrchná elektróda.
  Ide totiž o~typ oxidu s~vlastnosťami polovodičov,
  čiže môže za určitých podmienok viesť elektrický prúd.
  Zároveň je pre viditeľné svetlo priehľadný,
  čo nebýva pri polovodičoch bežné.
  Optické a~elektrické vlastnosti vrstvy TiO$\_2$
  často závisia od parametrov technologického procesu.]
Z~dôvodu havárie zariadenia sa nepodarilo takéto vzorky získať
a~v~skutočnosti sme mohli pracovať iba
s~tradičnými SiO$\_2$ vrstvami.#footnote[Oxid kremičitý sa v~mikroelektronike používa
  ako nevodivá izolačná vrstva.
  Jeho materiálové vlastnosti sú veľmi dobre preskúmané
  a~všeobecne známe.
  S~jeho amorfnou formou sa v~každodennom živote bežne stretávame,
  je to obyčajné sklo.]
Vzniknutú situáciu zhodnotíme v~závere vecne a~pravdivo:

#block(
  inset: 1em,
  fill: rgb("#f5f5f5"),
)[
  #emph[Aj napriek poruche technologického zariadenia sme
    dokázali zabezpečiť náhradné vzorky a realizovať merania
    optických vlastností tenkých vrstiev termálneho
    SiO$\_2$.
    Poznatky, ktoré sme získali pri práci s~pokročilými
    experimentálnymi zariadeniami následne využijeme vo výskume
    materiálových vlastností #ch("TiO2") vrstiev.
    V~diskusii sme naznačili možné rozšírenie existujúcich
    metód na tento druh materiálu.]
]

Ak priznáme, že zariadenie sa pokazilo
a tým pádom sme nesplnili ciele,
stane sa záverečná práca neobhájiteľnou.
Nasledujúci príklad je ukážka takejto nevhodnej formulácie:

#block(
  inset: 1em,
  fill: rgb("#f5f5f5"),
)[
  #emph[Počas prípravy tenkých vrstiev došlo k neočakávanej
    poruche technologického zariadenia,
    ktorá znemožnila výrobu plánovaných vzoriek.
    Merania optických parametrov #ch("TIO2")
    sme preto nerealizovali.
    Veríme, že experimenty s~náhradnými vzorkami tenkých vrstiev
    termálneho #ch("SiO2") pomôžu v~budúcnosti
    aj pri výskume iných materiálov.]
]

Text obsahuje tri zápory, je pesimistický,
s~nejasným výhľadom do budúcnosti.
Cítiť z~neho sklamanie a~frustráciu zo vzniknutej situácie,
ktorá sa javí ako neriešiteľná.
Jednoznačne sme priznali nesplnenie cieľa.
Aj keď sme urobili úspešné náhradné merania,
z~textu to nie je zrejmé.
Záverečné tvrdenie o~možnosti využitia výsledkov
v~sebe navonok ukrýva istú nádej,
v~skutočnosti však iba potvrdzuje to,
že chceme mať toto fiasko čím skôr za sebou.

Pozor ale aj na prílišnú pozitivitu.
Tá môže, paradoxne, nedostatky ešte viac zvýrazniť.
Nasledujúca ukážka je síce optimistická,
avšak do textu práce taktiež nevhodná:

#block(
  inset: 1em,
  fill: rgb("#f5f5f5"),
)[
  #emph[Vďaka drobnej poruche technologického zariadenia sme
    mohli realizovať merania optických vlastností tenkých vrstiev
    termálneho #ch("SiO2") a~získať tak unikátne výsledky.
    Nesmierne bohaté skúsenosti s~najkvalitnejšími meracími
    aparatúrami využijeme aj v~nadväzujúcom výskume.
    Rozšírenie nadobudnutých kompetencií na iné materiály
    považujeme za najväčší prínos predkladanej práce.]
]

V tomto príklade vidieť prílišnú snahu zahladiť škody
a~vychvaľovať sa výsledkami,
ktoré v~skutočnosti nemajú zvláštny význam.
Je totiž málo pravdepodobné,
aby s~SiO$\_2$ vznikli unikátne výsledky.
Text obsahuje nevhodné absolútne kvantifikátory
(_nesmierne bohaté skúsenosti, najkvalitnejšie aparatúry,
najväčší prínos_);
bagatelizuje nehodu, dokonca jej ďakuje
(_vďaka drobnej poruche_),
čím na ňu zbytočne upozorňuje;
zámerne sa nezmieňuje o~pôvodných TiO$\_2$ vrstvách.
Nadužívaním cudzích slov (_kompetencie_)
autori zväčša maskujú rôzne nedostatky,
napríklad vlastnú neistotu.

Zapamätáme si, že vedecký text musí byť jasný, pravdivý a vecný.
Očistíme ho od akýchkoľvek citových výlevov v prvom rade tým,
že sa vyhýbame extrémnym kvantifikátorom. Nepoužívame ani tieto:
_všetci, nikdy, žiaden, každý jeden,_
pokiaľ nepíšeme matematické vety alebo logické výrazy.
Ak sa napríklad nepodarilo naprogramovať ani jeden fungujúci kód,
nenapíšeme,
že _žiaden program, ktorý sme sa snažili vytvoriť nefunguje_.
Povieme to miernejšie: _snaha o~vytvorenie funkčného
programu viedla k~menej presvedčivým výsledkom_.
Negatívnu skutočnosť formulujeme pozitívne.

Ani pozitívne prínosy zbytočne nepreceňujeme.
Necháme ich, nech sa chvália samé.
Namiesto prehnaného zdôrazňovania:
_Úžasné výsledky všetkých meraní sme dosiahli
vďaka perfektne pripraveným vzorkám_,
napíšeme vecne:
_Jednotlivé merania boli úspešné aj
vďaka kvalitným vzorkám._

Súbor so záverom v~priečinku `includes` má
názov `conclusion.tex`
a~do dokumentu sa dostane prostredníctvom makra
`\FEIconclusion{includes/conclusion}`
v~hlavnom súbore projektu `thesis.tex`.

== Zoznam použitej literatúry

==== Zoznam použitej literatúry

Citované zdroje označujeme v texte číslom v hranatých zátvorkách.
Ide o poradové číslo uvedenia publikácií tak, ako sa postupne s nimi v texte pracuje.

Po kapitole _Záver_ nasleduje ďalšia nečíslovaná kapitola
s názvom _Literatúra_,
ktorá obsahuje číslovaný zoznam všetkých
citovaných literárnych zdrojov v spomínanom poradí.
Forma tohto zoznamu je pomerne komplikovaná a podrobne
ju opisuje norma ISO 690: 2023 Dokumentácia -- Bibliografické odkazy -- Obsah, forma a štruktúra @iso690.
Citovanie je v LaTeX-u vynikajúco vyriešené.
V tomto dokumente citujeme pomocou nadstavby BibLaTeX.
// Podrobne sa citáciám budeme venovať v @sec:citation kapitole.

=== Záverečná časť

Na záver práce uvádzame dodatky a prílohy.
Prílohy práce sú zväčša materiály,
ktoré majú odlišný formát voči samotnej práci.
Sú to napríklad pamäťové nosiče,
dátové súbory, veľkoformátové mapy, výkresy a podobne.
Každú prílohu treba jasne označiť, očíslovať a nazvať.
Zoznam príloh potom uvedieme v jednom z dodatkov.

Do tzv. dodatkov umiestňujeme informácie,
ktoré kvôli rozsahu nemôžu byť v hlavnom texte práce.
Sú to napríklad údajové listy k použitým prístrojom
a~zariadeniam, zdĺhavejšie matematické odvodenia,
rozsiahlejšie kódy programov, dokumentácia
k vytvoreným programom, definície neštandardných objektov,
ktoré v práci používame,
série rozsiahlych výsledkov alebo meraní
a ich grafy, fotografie a podobne.

Jednotlivé kapitoly v dodatkoch číslujeme veľkými písmenami,
čísla podkapitol majú formu A.1, B.3.2, atď.
Na tento účel vytvoríme pre každý dodatok samostatný súbor v priečinku `includes/`,
odporúčame názov súboru v tvare `attachmentA.tex` alebo podobne.
Každý dodatok je potom potrebné načítať v hlavnom súbore `thesis.tex` nasledujúcim spôsobom:

```
#FEIappendix("Názov prílohy" + <att:A>, "includes/attachmentA")
```

Prvý parameter makra je názov dodatku a ten sa nesmie nachádzať v zdrojovom súbore `attachmentA.tex`.

== Formát a jazyk <sec:formatLanguage>

=== Formát dokumentu

Rozmery stránky, typy písma, veľkosti, riadkovanie,
medzery medzi odsekmi, formát nadpisov, obrázkov, tabuliek,
rovníc a ďalšie vizuálne parametre záverečnej práce
rešpektujú do maximálnej miery normu STN 01 6910: 2023
Pravidlá písania a úpravy písomností @stn016910.

==== Rozmery strany

Veľkosť bežnej textovej strany záverečnej práce je A4,
t.~j. 21 cm × 29,7 cm.
Pravý a ľavý okraj majú šírku 2,75 cm,
horný a dolný okraj majú výšku 3 cm.
Päta stránky, v ktorej sa nachádza číslo strany,
je od spodnej hrany stránky vzdialená o 1,25 cm.
Šírka textu je 15,5 cm, jeho výška 23,7 cm.
Horný a dolný okraj obálky sú z estetických
dôvodov zmenšené na 2 cm.

==== Písmo a riadkovanie

Základný font šablóny je normálny rez tzv. antikvového písma
s veľkosťou 12 pt.
V tejto šablóne je to Computer Modern.
Vhodné sú aj iné fonty s pätkami ako Times, Georgia, Palatino a podobne.
Na obálke a titulnom liste používame bezpätkový (grotesk) font Latin Modern.
Jednotlivé typy odsekov (nadpisy, poznámky a pod.)
majú jednotný typ písma,
odlišnosti vyjadrujeme rezom (polotučné písmo, kurzíva)
alebo veľkosťou.

Parameter `linespread` má hodnotu 1,25, t.~j.
vzdialenosť riadkov textu vo veľkosti 12 pt je 15,6 pt.

==== Nadpisy

Šablóna záverečnej práce FEIstyle je založená na
štandardnej šablóne LaTeX-u article.
Nadpis najvyššej úrovne je `section` zodpovedajúci kapitole.
Podkapitoly sú `subsection` a `subsubsection`.
Číslovanie kapitol a podkapitol je viacúrovňové typu X.Y.Z,
kde X je číslo kapitoly, Y je číslo podkapitoly a Z je číslo časti podkapitoly.
Číslovanie vyšších úrovní nie je definované.
Tvar a forma nadpisov zodpovedá norme STN ISO 2145: 1978 Dokumentácia.
Číslovanie oddielov a pododdielov písaných dokumentov @iso2145.

Nová kapitola začína vždy na novej strane.
Príkaz `section` spôsobí okrem sadzby čísla a názvu kapitoly
aj ukončenie predošlej kapitoly, vysádzanie všetkých plávajúcich objektov
(obrázky, tabuľky, výpisy kódu), ktoré sa nepodarilo umiestniť
na príslušné miesto v texte, a prejde na novú stranu.

=== Jazyk a gramatika

Záverečná práca na FEI STU v Bratislave musí byť napísaná
buď po slovensky alebo po anglicky.
Ak je jazyk práce angličtina, musí po závere nasledovať
rezumé v slovenskom jazyku.

Záverečná práca univerzitného štúdia sa vyznačuje
vysokou jazykovou úrovňou.
Gramatické a štylistické chyby sú neprípustné.
Študent by mal tejto stránke diela venovať patričnú
pozornosť a podľa možností nechať rukopis prejsť
kvalifikovanou jazykovou kontrolou.
Najmä bakalárska práca predstavuje v živote väčšiny študentov
prvý rozsiahlejší autorský útvar,
ktorý má významný vplyv na jeho ďalší život a kariéru.

Aj keď väčšina textových editorov dokáže odhaľovať preklepy,
neporadí si s komplikovanejšou gramatikou a štylistikou.
Treba sa riadiť najmä pravidlami slovenského pravopisu,
slovníkmi slovenského jazyka a ďalšími zdrojmi,
ktoré možno nájsť na webových stránkach
Jazykovedného ústavu Ľudovíta Štúra SAV.#footnote[#link("https://www.juls.savba.sk/")[www.juls.savba.sk]]
Využiť môžeme aj jazykovu poradňu,
ktorú poskytuje ústav bezplatne a to buď telefonicky alebo
prostredníctvom emailovej komunikácie.
Cenným zdrojom informácií môže byť aj Jazyková poradňa
denníka SME v spolupráci
s Jazykovedným ústavom Ľudovíta Štúra SAV#footnote[#link("https://jazykovaporadna.sme.sk/")[jazykovaporadna.sme.sk]]
alebo online slovníky slovenského jazyka,#footnote[#link("https://slovnik.juls.savba.sk/")[slovnik.juls.savba.sk]]
prípadne národný jazykový korpus.#footnote[#link("https://korpus.sk/")[korpus.sk]]

Pri písaní práce dbáme najmä na pravopisné javy ako sú písanie
tvrdého a mäkkého y/i vo vybraných slovách,
v príponách a koncovkách pri skloňovaní
(pekný muž, ale pekní muži),
v číslovkách (rozprávali sme sa so siedmimi v poradí
-- skončili siedmi v poradí,
ale hrali sme sa so siedmymi deťmi -- detí bolo sedem), atď.
Rovnako dôležité je správne písanie rodov,
skloňovanie a časovanie.

Veľmi komplexná a dôležitá zložka gramatiky
je písanie čiarok v súvetiach.

Popri gramatike je podstatná aj štylistická tvorba viet,
ktorú musí študent univerzity zvládať na vysokej úrovni.

==== Delenie slov

Tzv. _textové procesory_ ako MS Word, LibreOffice a Apache OpenOffice
ponúkajú automatické delenie slov na konci riadka.
Systém na sadzbu textu LaTeX má túto funkciu automaticky zapnutú
a jej slovenská lokalizácia je veľmi kvalitne spracovaná.

Vo veľkej väčšine prípadov je delenie
v súlade s pravidlami jazyka.
Môžu sa vyskytnúť sporné okolnosti,
kedy počítač nerozdelí slovo správne.
Väčšinou máme možnosť do procesu zasiahnuť
a ručne kontrolovať delenie slov na miestach,
s ktorými si softvér nevie poradiť.
Príkaz na preferované rozdelenie slova je `\-`.
Napríklad slovo `predstave-nie` LaTeX
preferovane rozdelí v mieste prípony.

V každom prípade je žiadúce slová na konci riadka deliť
a túto možnosť nevypínať.
Prospieva to práci ako po technickej,
tak aj po estetickej stránke.
Odseky obsahujú menej dier,
textová oblasť stránky je vyplnená homogénnejšie,
čo prispieva k lepšej čitateľnosti.
V prípade, že používame zarovnávanie do bloku tak,
ako aj v tomto dokumente,
je prítomnosť dier v odseku značne rušivá.
Ak používame zarovnanie textu doľava,
nepoužívanie delenia slov má vplyv na vznik tzv. riek,
čo je náhle striedanie dlhých a krátkych riadkov.
Pravý okraj textu je nepekne zubatý.

Pravidlá rozdeľovania slov na konci riadka sú pomerne zložité.
Základné pravidlo, ktoré si pamätáme zo základnej školy,
je, že slová delíme na slabiky pred spoluhláskou alebo medzi
dvomi spoluhláskami.
Ak si nie sme istí, uprednostňujeme delenie v mieste,
kde sa ku koreňu slova pripájajú predpony alebo prípony,
prípadne v mieste spojenia slov v zloženom slove.

Pri slovách utvorených predponou alebo príponou
uprednostňujeme morfologické delenie
pred rozdelením koreňa slova.
Najskôr sa snažíme deliť slovo za predponou,
ak to nejde, skúsime to pred príponou.
Napríklad slovo _predstavenie_
delíme na slabiky takto: _pred-sta-ve-nie_.
Pri rozdeľovaní slov uprednostňujeme model
_pred-stavenie_, výnimočne aj _pred-stave-nie_.
V slove _výklenok_ sa uplatňuje pravidlo morfologického
delenia pred delením v mieste zhluku spoluhlások.
Sylabická stavba tohto slova je _vý-kle-nok_,
nie _výk-le-nok_,
pretože slovo pozostáva z troch častí: predpony _vý_,
koreňa _kle_ a prípony _nok_.
Mohli by sme namietať, že prípona je _ok_,
pomocou ktorej bolo vytvorené podstatné meno zo slovesa
klenúť alebo z prídavného mena klenutý,
kde identifikujeme koreň _klen_.
V skutočnosti je však príponou _-nok_.
Morfológia je pomerne komplexná problematika,
a nedokážeme tu obsiahnuť všetky jej detaily.
Väčšinou sa môžeme spoľahnúť na softvér,
že slová rozdelí správne.
V prípade pochybností využijeme externé pomôcky spomenuté
v úvode tejto kapitoly.

Slová spojené spojovníkom rozdeľujeme v mieste spojovníka tak,
že spojovník napíšeme na konci aj na začiatku riadka.
Slovo _vedecko-pedagogický_ môžeme rozdeliť takto:
_ve-dec-ko-pe-da-go-gic-ký_.
Ak delenie padne na miesto spojenia slov,
rozdelíme ho nasledujúcim spôsobom:

_vedecko-_
_-pedagogický_

V šablóne rieši tento problém príkaz
`languageattribute{slovak}{split}`,
ktorý je súčasťou jazykového balíka `babel`.

Nesprávne delenie slov sa v práci zvyčajne objaví
len zriedkavo a nemá vplyv na jej hodnotenie.
Netreba sa naň príliš sústrediť a robiť si starosti.
Celkový vzhľad práce viac naruší vypnutie delenia slov,
než občasná malá chyba.

==== Jednopísmenové predložky a spojky

Hovoríme o predložkách k, o, v, s, z,
ktoré by nemali ostať osamotené na konci riadka.
Do tejto kategórie patria aj spojky a, i.
Jednopísmenové slová pripájame k nasledujúcemu slovu pomocou
tzv. _nedeliteľnej medzery_,
čo je špeciálny netlačiteľný znak.
V kódovaní UTF-8 má číslo 00A0 (ASCII 160)
a hovorí textovému procesoru,
že na tomto mieste nesmie byť za žiadnych okolností
koniec riadka.
V programe MS Word ho zadáme použitím klávesovej skratky
Ctrl-Shift-Medzera.
V LaTeX-u zapíšeme nedeliteľnú medzeru s premenlivou šírkou
ako symbol vlnovka (`~`)
Napríklad slovné spojenie _v~priestore_ napíšeme takto:
`v~priestore`.
Na rozdiel od Wordu, LaTeX takéto medzery nevkladá automaticky
a treba to urobiť ručne.

Existuje viacero medzier, ktoré sú tiež nedeliteľné a majú pevnú šírku.
Najpoužívanejšia tzv. úzka medzera a zapíšeme ju ako `\,`.
Takýto typ medzery používame pri zápise hodnôt fyzikálnych veličín
a vkladáme ju medzi číslo a jednotku.

=== Štylistika

Niektorí oponenti vyčítajú študentom príliš dlhé súvetia,
iní zas príliš krátke.
Pravda je, že jednoduché vety pôsobia školácky,
zatiaľ čo dlhé súvetia sú často nezrozumiteľné a únavné.

V prvom rade sa snažíme nevrstviť podraďovacie súvetia.
Vo vete _Elektrostatické pole je fyzikálne pole,
ktoré tvoria elektrické náboje, ktoré sú v pokoji_
je dvakrát použitá spojka ktoré,
čo je síce prípustné, avšak nie príliš estetické.
Vetu môžeme opraviť takto:
_Elektrostatické pole je fyzikálne
pole tvorené elektrickými nábojmi, ktoré sú v pokoji._
Ak sa chceme vyhnúť trpnému rodu,
môžeme vetu preformulovať nasledujúcim spôsobom:
_Elektrostatické pole tvoria elektrické náboje,
ktoré sú v pokoji._
Vypadol síce pojem fyzikálne pole,
ale zmysel vety zostal nezmenený.

Správne a plynulo bude veta vyzerať aj v tomto tvare:
_Elektrostatické pole je fyzikálne pole,
ktoré tvoria elektrické náboje v pokoji._
V prípade potreby môžeme vetu napísať aj inak:
_Fyzikálne pole elektrických nábojov,
ktoré sú v pokoji, nazývame elektrostatické pole._

Obmieňame štruktúru po sebe nasledujúcich viet:
_Z výsledkov merania je zrejmé,
že predpoklad o zvyšovaní pohyblivosti nosičov náboja
s teplotou bol správny.
Na začiatku práce sme hovorili o tom,
že toto tvrdenie podporíme hodnovernými experimentálnymi dátami._
Obe súvetia sú podraďovacie so spojkou že.
Aby sme sa vyhli opakovaniu rovnakého typu viet,
môžeme prvú vetu prepísať:
_Výsledky merania potvrdili predpoklad o zvyšovaní
pohyblivosti nosičov náboja s rastúcou teplotou._
Druhú vetu ponecháme bez zmeny.

Veľmi osviežujúco pôsobí, ak medzi dlhé a kvetnaté súvetia
občas vložíme jednoduchú holú vetu.
Použijeme predchádzajúci príklad:
_Na začiatku práce sme hovorili o tom,
že predpoklad o zvyšovaní pohyblivosti nosičov náboja
s rastúcou teplotou podporíme hodnovernými
experimentálnymi dátami.
Merania ho potvrdili._
Tento malý trik je nečakane účinný a prispieva k lepšiemu
toku myšlienok.

Pozor, v texte pozostávajúcom z krátkych jednoduchých viet
je niekoľkoriadkové súvetie desivé:
_Pohyblivosť rastie s teplotou.
Hovorili sme o tom už na začiatku.
Tvrdenie ešte podporíme experimentom.
Ukazuje sa, že sme predpoklad o rastúcej pohyblivosti
nosičov náboja so zvyšujúcou sa teplotou,
pokiaľ berieme do úvahy výsledky meraní,
formulovali správne._

Aby bol písaný text zaujímavý a udržal čitateľov záujem,
používame stredne dlhé súvetia pozostávajúce maximálne
z dvoch až troch viet.
Občas text oživíme jednoduchou krátkou vetou.
Dávame si pri tom pozor,
aby táto činnosť nebola príliš schematická.

=== Anglický jazyk

Šablóna FEIstyle podporuje slovenský a anglický jazyk.
Pre prácu v anglickom jazyku je potrebné túto skutočnosť nastaviť v preambule
hlavného súboru `thesis.tex` ako nepovinný parameter `en` príkazu definície šablóny:

```
#documentclass[bp,en]{FEIstyle}
```

Prvý parameter určuje, či ide o bakalársku (`bp`) alebo diplomovú (`dp`) prácu.

Anglická práca musí obsahovať po závere rezumé a na to je potrebné odstrániť
komentár pred príkazom `\FEIresume{includes/resume}`.

Na jazykovú lokalizáciu používame balík `babel`.
Ak sa v práci písanej v slovenčine nachádzajú výrazy v angličtine,
uvedieme takýto text do makra `\foreignlanguage`,
čím zabezpečíme správne medzery a delenie slov.
Napríklad pri zavádzaní skratky AI môžeme napísať,
že ide o anglický výraz pre umelú inteligenciju _Artificial Intelligence_.
Zapíšeme ho nasledujúcim spôsobom:

```
\foreignlanguage{english}{Artificial Intelligence}
```

Ak nastavíme parametrom `en` anglický jazyk ako hlavný,
stane sa slovenčina cudzím jazykom.

=== Použitie umelej inteligencie <sec:utilizingAI>

Na optimalizáciu formulácie myšlienok môžeme využiť služby
umelej inteligencie (AI, z ang. _artificial intelligence_)
a tzv. veľkých jazykových modelov (LLM, z ang. _large language model_).
Umelá inteligencia dokáže kontrolovať rozsiahlejšie časti prác,
vyhľadáva chyby a navrhuje vhodnejšie
formulácie na základe pravidiel,
ktoré sme aplikovali v predchádzajúcom texte.
Neosvedčuje sa však pri kompozícii textov.
Neuspokojivé výsledky dosahujeme aj v prípadoch,
kedy necháme umelú inteligenciu preformulovať celé odseky.
Zanáša do nich chyby a nezmysly, ktoré tam pôvodne neboli.
Ťažko sa potom odhaľujú.
Tento jav poznáme ako tzv.
halucinácie a trpia nimi všetky nástroje AI,
vrátane najznámejšieho ChatGPT.

Napriek tomu predstavujú služby AI silný nástroj pri tvorbe pôvodného obsahu,
zvlášť užitočné sú tzv. generatívne umelé inteligencie (GAI),
ktoré dokážu vytvárať výstupy takmer na nerozoznanie od tvorby človeka.
Ich správna aplikácia nepochybne prispieva k vyššej jazykovej a obsahovej kvalite záverečných prác.
Treba však mať na pamäti, že záverečná práca má byť
pôvodné autorské dielo študenta a všetky časti,
ktoré nepochádzajú od autora musia byť riadne
zdokumentované a deklarované v zozname použitých zdrojov.
V žiadnom prípade sa neodporúča, aby
GAI formulovala pôvodné myšlienky
alebo súvislé časti práce.
Takéto konanie považujeme za nečestné podobne,
ako keby prácu písal niekto iný,
// prípadne by boli celé odseky prebrané z iného zdroja bez korektného citovania (pozri kapitolu @sec:citation).

Používanie umelej inteligencie pri písaní záverečných prác
upravuje opatrenie rektora STU v Bratislave č. 1/2024-O,
ktoré budeme ďalej v texte uvádzať ako "opatrenie" @opatrenie12024.

==== Povolené činnosti umelej inteligencie bez potreby deklarácie

Podľa čl. V, ods. 2, písm. a) opatrenia môžu študenti používať GAI bez potreby deklarácie na tieto činnosti: kontrola gramatiky, oprava textu, tvorba osnovy, zhromažďovanie informácií a~použitie výpočtových metód a~softvérov, ktoré obsahujú prvky AI.

==== Deklarácia činnosti generatívnej umelej inteligencie

Čl. V, ods. 2, písmeno b) opatrenia obsahuje zoznam možností použitia GAI, ktoré je potrebné v práci deklarovať na konci po zozname literatúry.
Ide o nasledujúce činnosti: preklady medzi jazykmi, úpravy a reformulácie textu, tvorba zhrnutia a rešerší, citovanie odpovedí GAI, tvorba počítačových programov, tvorba grafického obsahu a obrázkov.

V závere práce, uvedieme za zoznamom literatúry časti textu vytvorené s~pomocou AI, spôsob ich využitia a použitý nástroj AI @opatrenie12024, čl. VI., ods. 2.

V hlavnom súbore záverečnej práce `thesis.typ` je príkaz na načítanie súboru so všetkými záznamami z~priečinka `includes`.
Každý výskyt použitia nástrojov AI zapíšeme ako položku do pripraveného prostredia.
Formát a~obsah jednotlivých záznamov je naznačený v prílohe opatrenia číslo 1/2024-O.
Záznamy obsahujú tieto prvky:
- Názov spoločnosti (dátum), Názov nástroja, časť práce, účel použitia.

Predchádzajúci vzorec vygeneroval nástroj ChatGPT 4o od firmy
OpenAI dňa 2. 2. 2025 na základe analýzy spomínaného opatrenia.
V deklarácii použitia umelej inteligencie sa zapíšeme tento záznam:
- OpenAI (2025), ChatGPT 4o, časť @sec:utilizingAI, generovanie vzorca záznamu použitia AI.

Súčasná verzia šablóny FEIstyle nedisponuje nástrojmi na automatizáciu záznamov činnosti AI.
Preto ich treba zapisovať ručne do súboru `includes/ai_declaration.typ`.

== Špeciálne a netextové objekty

=== Matematické rovnice

Systém na sadzbu textu TeX pôvodne vyvinul Donald Knuth.
Jeho motivácia bola poskytnúť producentom vedeckej tlače počítačový nástroj,
ktorý bude správne sádzať matematické rovnice.
Typst ako moderný nástroj má sadzbu rovníc v svojej DNA.
Autori textov z prírodovedeckej a technickej komunity siahajú po tomto nástroji
práve z~dôvodu bezkonkurenčnej práce s~rovnicami pri tvorbe vedeckého alebo akademického obsahu.

Matematické rovnice používame v tlačenom texte dvomi spôsobmi:
1. píšeme ich v~rámci textového odseku;
2. rovnicu vytlačíme zvlášť medzi dva textové odseky a~vtedy ju spravidla aj číslujeme, aby sme sa na ňu mohli ďalej odvolávať.

==== Rovnica v textovom riadku

Riešenie kvadratickej rovnice s koeficientami $a, b, c$
a~s~neznámou $x$ vypočítame pomocou známeho vzťahu
$x = frac(-b plus.minus sqrt(b^2 - 4a c), 2a)$.
Je to príklad rovnice zapísanej v~rámci textového odseku.
Ak tú istú rovnicu napíšeme do samostatného odseku, vyzerá trochu inak:

$ x = frac(-b plus.minus sqrt(b^2 - 4a c), 2a) $

Očividný rozdiel je vo veľkosti zlomku a~znaku odmocniny,
môžeme si všimnúť aj malé rozdiely v~medzerách, vo vertikálnom zarovnávaní, atď.

Vložené rovnice v~rámci textového riadku zapisujeme pomocou znaku dolára.
Matematický zápis ohraničíme znakmi dolára sprava aj zľava.
Napríklad zápis `$y = a x^2 + b x + c$` vytvorí rovnicu $y = a x^2 + b x + c$.

Označenia fyzikálnych veličín píšeme tiež ako vloženú rovnicu:
veľkosť sily $F$, hmotnosť $m$, čas $t$ a~podobne.
Všetky veličiny sme zapísali takto: `$F$`, `$m$`, `$t$`.

==== Zobrazená rovnica

Matematický text ohraničený dvomi znakmi dolára vytvorí zobrazenú rovnicu, ktorú vysádza do zvláštneho odseku zarovnaného na stred, napríklad:

$ y = a x^2 + b x + c $

Rovnicu s referenčným číslom vytvoríme tak, že zapíšeme rovnicu do bloku:

```
$ y = a x^2 + b x + c $ <eq:example>
```

==== Zásady matematickej sadzby

Pravidlá sadzby matematických, fyzikálnych veličín a~ich vzťahov sumarizuje medzinárodná norma u~nás známa pod označením STN ISO 80 000: 2022 Veličiny a~jednotky @iso800001.
Označenie fyzikálnych a~matematických veličín píšeme vždy šikmým rezom písma.
Čísla, názvy funkcií a~jednotky fyzikálnych veličín zapisujeme normálnym rezom.
Správny zápis elektrického napätia s veľkosťou 5,07 voltu vyzerá takto:

$ U = 5,07 upright("V") $ <eq:quantity>

kde $U$ je elektrické napätie.
Môžeme si všimnúť, že okolo znaku rovnosti sú medzery,
desatinná čiarka sa píše bez medzier.

TeX v~matematickom móde automaticky sádže veličiny kurzívou.
Ak chceme, aby bola jednotka V vzpriamená, použijeme v~matematickom móde funkciu `upright()`.
Medzery okolo znaku rovnosti sú taktiež automatické.

==== Príklad

Z Coulombovho zákona vyplýva, že pre vektor elektrostatickej sily $bold(F)_e$ medzi dvomi bodovými nábojmi platí nasledujúci vzťah:

$ bold(F)_e = frac(1, 4π ε_0) frac(q_1 q_2, r^2) frac(bold(r), r) $ <eq:coulomb>

kde $q_1$, $q_2$ sú veľkosti bodových nábojov,
$bold(r)$ je polohový vektor náboja $q_2$ vzhľadom na náboj $q_1$
a~$ε_0$ je elektrická konštanta.

Aby sme zhrnuli predchádzajúce pravidlá, detailnejšie opíšeme spôsob zápisu jednotlivých prvkov
v~rovnici @eq:coulomb.
Skalárne veličiny veľkosť náboja a~vzájomná vzdialenosť sú
napísané kurzívou,
vektorové veličiny sila a~polohový vektor sú polotučným rezom.
Všetky čísla (indexy a~násobok 4 v~menovateli)
píšeme normálnym rezom.
Konštanty $π$ a $ε_0$ sú podľa zvyklosti vysádzané šikmým rezom.

V~texte, ktorý nasleduje bezprostredne za rovnicou vysvetlíme
a~stručne opíšeme jednotlivé symboly.

#heading(level: 5)[Dôležité pravidlá písania rovníc]

- Značky veličín píšeme šikmým rezom písma (kurzívou): $x$, $y$, $a$, $F$, $P$, $W$.

- Fyzikálne jednotky píšeme vzpriameným písmom: $a = 10 upright("cm")$.

- Čísla píšeme vzpriameným písmom: $1$; $2$; $3$; $1024$; $3,14$ a podobne.

- Skratky matematických funkcií píšeme vzpriameným písmom: $sin(α + β)$, $cos ω t$, $log_a x = frac(ln x, ln a)$, $e^(i π) = -1$.

- Označenia nemenných konštánt sú tiež vzpriamené písmená: $π$, $i$, $e$ -- tri základné matematické konštanty -- Ludolfovo číslo, komplexná jednotka a~Eulerovo číslo. Niektoré konštanty sa zo zvyku môžu písať kurzívou, napríklad $π$ alebo dielektrická konštanta $ε_0$. Komplexná jednotka je však vždy vzpriamená: $i^2 = -1$.

- Vzpriameným písmom píšeme v matematických vzťahoch aj všetky zátvorky.

- Sumačné indexy píšeme kurzívou: $p_N(x) = sum_(i=1)^N a_i x^i$. Symbol $i$ v tomto príklade predstavuje sumačný index, nie komplexnú jednotku.

- Vektory uvádzame buď polotučným šikmým rezom ($bold(a)$, $bold(b)$, $bold(F)$) alebo šikmým netučným rezom so šípkou nad symbolom: $vec(a)$, $vec(b)$, $vec(F)$. Treba si vybrať jeden spôsob a~ten používať v~celej práci.

- Označenia matíc a tenzorov zapisujeme polotučným šikmým rezom:
  $ bold(M) = mat(m_{11}, m_{12}; m_{21}, m_{22}) $
  Prvky matice $m_{i j}$ sú skalárne veličiny, preto sú to netučné šikmé písmená.

- Ak treba z nejakého dôvodu odlíšiť tenzor od bežnej matice, môžeme tenzory označiť dvomi čiarkami: $overline(overline(T))$.

- Značku úplného diferenciálu píšeme vzpriameným rezom: $upright(d) y$ je úplný diferenciál veličiny $y$.

- Derivácia dráhy podľa času: $v = frac(upright(d) s, upright(d) t)$. Veličiny $v$, $s$ a~$t$ sú stále písané kurzívou.

- Určitý integrál vyzerá takto: $ integral_a^b f(x) upright(d) x $. V~integráli spravidla vkladáme pred diferenciál úzku medzeru.


