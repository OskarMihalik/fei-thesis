#import "style.typ": *
#import "utils.typ": *

#let cover-page() = {
  set page(
    margin: (top: 2cm, bottom: 1.8cm, left: 2.75cm, right: 2.75cm),
    numbering: none,
  )

  context {
    let vars = variables-state.get()
    let t = vars.at("title")
    let a = vars.at("author")
    let s = vars.at("school")
    let f = vars.at("faculty")
    let y = vars.at("year")
    let tt = vars.at("thesis-type")
    let rn = vars.at("reg-nr")

    align(center)[
      #text(size: 14.0pt, weight: "black")[#upper(s)] \
      #v(3.5mm)
      #text(size: 13.5pt, weight: "black")[#f]
    ]

    v(9mm)
    par(first-line-indent: 0pt)[
    #text(size: 12.0pt)[#translate("reg-nr-label") #rn]
    ]

    v(51.5mm)

    align(center)[
      #box(width: 100%, text(size: 20.5pt, weight: "black")[#t])
      #v(29pt)
      #text(size: 14.5pt, weight: "black")[#tt]
    ]

    v(1fr)

    grid(
      columns: (1fr, 1fr),
      text(size: 14.5pt, weight: "black")[#y],
      align(right, text(size: 14.5pt, weight: "black")[#a]),
    )

    pagebreak()
  }
}

#let title-page() = {
  set page(
    margin: (top: 3.024cm, bottom: 2.775cm, left: 2.75cm, right: 2.75cm),
    numbering: none,
  )

  context {
    let vars = variables-state.get()
    let t = vars.at("title")
    let a = vars.at("author")
    let s = vars.at("school")
    let f = vars.at("faculty")
    let y = vars.at("year")
    let tt = vars.at("thesis-type")
    let rn = vars.at("reg-nr")
    let sp = vars.at("study-programme")
    let sf = vars.at("study-field")
    let sv = vars.at("supervisor")
    let c = vars.at("consultant")
    let tw = vars.at("training-workplace")

    align(center)[
      #par(leading: 18.2pt)[
        #text(size: 14pt, weight: "black")[#upper(s)]
        #linebreak()
        #text(size: 13.5pt, weight: "black")[#f]
      ]
    ]

    v(9mm)

    par(first-line-indent: 0pt)[
    #text(size: 12.0pt)[#translate("reg-nr-label") #rn]
    ]

    v(40.9mm)

    align(center)[
      #par(leading: 18.1pt)[#text(size: 20pt, weight: "black")[#t]]
      #v(22pt)
      #text(size: 14pt, weight: "black")[#tt]
    ]

    v(1fr)

    grid(
      columns: (5cm, 1fr),
      gutter: 0.5em,
      row-gutter: 0.8em,
      [#translate("study-programme-label")], [#sp],
      [#translate("study-field-label")], [#sf],
      [#translate("training-workplace-label")], [#tw],
      if sv != none [#translate("supervisor-label")], if sv != none [#sv],
      if c != none 
        [#translate("consultant-label")], if c != none [#c],
      
    )

    v(3.43cm)

    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      text(size: 12pt, weight: "black")[#y],
      text(size: 12pt, weight: "black")[#a],
    )

    pagebreak()
  }
}

#let fei-bibliography() = {
  [
    #bibliography("bibliography.bib", style: "iso-690-numeric", title: [#translate("bibliography")])
  ]
}

#let fei-list-of-glossaries() = {
  set heading(outlined: false, numbering: none)
  abbr.list(title: [#translate("glossary-title")], columns: 1)
  abbr.load("includes/glossary.csv")
  pagebreak()
}

#let fei-list-of-manual-glossaries() = {
  heading(outlined: false, numbering: none)[#translate("glossary-title")]
  include "includes/manual_glossary.typ"
  pagebreak()
}


#let fei-assignment(pdf-path, pages: 1) = {
  set page(
    margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
  )
  for page-num in range(1, pages + 1) {
    image(pdf-path, width: 100%, page: page-num)
    pagebreak()
  }
}

#let fei-outline() = {
  show outline.entry.where(
    level: 1,
  ): it => link(
    it.element.location(),
    [#strong([#it.prefix()   #it.body() #box(width: 1fr, repeat(gap: 0.15em)[ ]) #it.page() \ ])],
  )
  outline()
  pagebreak()
}

#let fei-outline-code() = {
  outline(
    title: [#translate("outline-code")],
    target: figure.where(kind: raw),
  )
  pagebreak()
}

#let fei-outline-tables() = {
  outline(
    title: [#translate("outline-table")],
    target: figure.where(kind: table),
  )
  pagebreak()
}

#let fei-outline-image() = {
  outline(
    title: [#translate("outline-image")],
    target: figure.where(kind: image),
  )
  pagebreak()
}

#let print-keywordsSK() = {
  set text(heading-2)
  align(left, text(font: font, strong([Kľúčové slová])))
  set text(text-size)

  [#context {
    let vars = variables-state.get()
    vars.at("keywords")
    }]

  pagebreak()
}

#let print-keywordsEN() = {
  set text(heading-3)
  align(left, text(font: font, strong([Keywords])))
  set text(text-size)

    [#context {
    let vars = variables-state.get()
    vars.at("keywords")
    }]

  pagebreak()
}

/// This function constructs the abstract, which is supposed to come directly after the frontmatter.
/// -> content
#let abstract(
  content,
  /// The font, which is only used for the heading of the abstract paragraph.
  /// -> string
  // font: title-font,
  /// The title which the abstract paragraph should have.
  /// -> "en" | "sk"
  lang: "sk",
) = {
  // English abstract
  // v(50pt, weak: true)
  set par(first-line-indent: 0pt)
  set text(heading-1)
  // show: pad.with(x: 1cm)
  align(left, text(font: font, strong(translate("abstract", lang: lang))))
  v(20pt)
  set text(text-size)

  content

  v(20pt)
  if lang == "sk" [
    #print-keywordsSK()
  ] else [
    #print-keywordsEN()
  ]
}

#let introduction(content) = {
  heading(numbering: none)[#translate("introduction")]
  content
  pagebreak()
}

#let main-matter(content) = {
  content
  pagebreak()
}

#let fei-conclusion(content) = {
  heading([#translate("conclusion")], numbering: none)
  content
  pagebreak()
}

#let fei-ai-declaration(content) = {
  heading([#translate("ai-declaration")], numbering: none, outlined: false)
  content
  pagebreak()
}

#let fei-thanks(body) = {
  [
    #v(1fr)
    #heading(level: 2, outlined: false, numbering: none)[#translate("thanks")]
    #body
    #pagebreak()

  ]
}

#let appendix-counter = counter("appendix")

#let noindent(body) = {
  set par(first-line-indent: 0pt)
  body
}

#let indent(body) = {
  set par(first-line-indent: (amount: first-line-indent, all: true))
  body
}

#let appendix(content, title) = {
  appendix-counter.step()
  context {
    let suffix = translate("appendix-suffix")
    let letter = numbering("A", appendix-counter.get().first())
    heading(numbering: none)[#suffix #letter: #title]
  }

  content

  pagebreak()
}
