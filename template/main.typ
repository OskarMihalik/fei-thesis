#import "../lib.typ": *

#show: fei-thesis.with(language: "sk")

#show: set-variables.with((
  title: "Rozšírená šablóna záverečnej práce na FEI STU v Bratislave v systéme Typst",
  author: "RNDr. Juraj Chlpík, PhD.",
  reg-nr: "FEI-xxxx-xxxx",
  date: "31. decembra 2024",
  year: "2024",
  thesis-type: "Bakalárska práca",
  keywords: [záverečná práca, šablóna, Typst, formátovanie textu, citácie],
  keywords-en: [Final thesis, template, Typst, text formatting, citations],
  study-programme: "názov študijného programu",
  study-field: "názov študijného odboru",
  school: "Slovenská technická univerzita v Bratislave",
  faculty: "Fakulta elektrotechniky a informatiky",
  supervisor: "tituly Meno Priezvisko, tituly",
  consultant: "tituly Meno Priezvisko, tituly",
  training-workplace: "Názov školiaceho pracoviska",
))

#cover-page()
#title-page()
#fei-assignment(read("includes/assignment.pdf", encoding: none), pages: 2)


#fei-thanks[#include "includes/thanks.typ"]

#abstract(
  [
    #include "includes/abstractSK.typ"
  ],
  lang: "sk",
)

#abstract(
  [
    #include "includes/abstractEN.typ"
  ],
  lang: "en",
)

#show: start-numbering.with()
#fei-outline()
#fei-outline-figures-tables()
#fei-list-of-glossaries[#abbr.load("includes/glossary.csv")]
// #fei-list-of-manual-glossaries[#include "includes/manual_glossary.typ"]
#fei-outline-code()


#introduction[#include "includes/introduction.typ"]

#main-matter[#include "includes/core.typ"]
#fei-conclusion[#include "includes/conclusion.typ"]

#bibliography("bibliography.bib")
#fei-ai-declaration[#include "includes/ai_declaration.typ"]

#appendix([#include "includes/appendixA.typ"], [Algoritmus], label-name: "alg:1")
#appendix([#include "includes/appendixB.typ"], [Výpis dlhého kódu], label-name: "code:1")
#appendix([#include "includes/appendixC.typ"], [Slovníček pojmov], label-name: "glossary:1")
