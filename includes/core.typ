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

