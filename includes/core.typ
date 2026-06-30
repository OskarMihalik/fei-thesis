

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
