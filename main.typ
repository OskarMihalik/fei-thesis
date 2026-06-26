#import "template.typ": *

#show: fei-thesis.with()

#title-page()

#keywordsSK.update([kľúčové slovo, typst])
#keywordsEN.update([kľúčové slovo, typst])

#abstract(
  [
    #include "includes/abstractSK.typ"
  ],
  title: [Abstrakt],
)

#abstract(
  [
    #include "includes/abstractEN.typ"
  ],
  title: [Abstract],
)

#fei-outline()

#introduction()[#include "includes/introduction.typ"]

#counter(page).update(1)
#set heading(numbering: "1.1")

#include "includes/core.typ"

#pagebreak()
#bibliography("bibliography.bib", style: "iso-690-numeric")
