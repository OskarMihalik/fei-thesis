#import "template.typ": *

#show: fei-thesis.with()

#title-page()

#keywordsSK.update([kľúčové slovo, typst])
#keywordsEN.update([kľúčové slovo, typst])

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

#fei-outline()

#introduction()[#include "includes/introduction.typ"]


#main-matter([#include "includes/core.typ"])

#bibliography("bibliography.bib", style: "iso-690-numeric")
#pagebreak()

#appendix([#include "includes/appendixA.typ"], [Algoritmus])
#appendix([#include "includes/appendixA.typ"], [Výpis dlhého kódu])
