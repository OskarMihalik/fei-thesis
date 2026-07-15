#import "template.typ": *

#show: fei-thesis.with()


#title-page()
#fei-assignment("includes/assignment.pdf", pages: 2)

#keywordsSK.update([kľúčové slovo, typst])
#keywordsEN.update([kľúčové slovo, typst])


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

#fei-outline()
#fei-outline-tables()
#fei-outline-image()
#fei-list-of-glossaries()
// #fei-list-of-manual-glossaries()
#fei-outline-code()

#show: start-numbering.with()

#introduction[#include "includes/introduction.typ"]

#main-matter[#include "includes/core.typ"]
#fei-conclusion[#include "includes/conclusion.typ"]

#fei-bibliography()
#fei-ai-declaration[#include "includes/ai_declaration.typ"]

#appendix([#include "includes/appendixA.typ"], [Algoritmus])

// #appendix([#include "includes/appendix.typ"], [Výpis dlhého kódu])
