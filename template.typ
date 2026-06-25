#let text-size = 12pt
#let heading-1 = 20pt
#let heading-2 = 16pt
#let heading-3 = 14pt
#let language = "sk"
#let font = "New Computer Modern"
#let keywordsSK = state("keyword SK")
#let keywordsEN = state("keywords EN")

#let fei-thesis(
  title: "",
  body,
) = {
  // Page setup
  set page(
    paper: "a4",
    margin: (top: 3cm, bottom: 3cm, left: 2.75cm, right: 2.75cm),
  )

  //  set heading( block: block(below: 2em))
  set par(leading: 12.25pt, first-line-indent: 0.63cm, justify: true)
  // show par: set block(spacing: 1pt) // parskip 1pt
  set text(size: text-size, font: font, lang: language)
  show heading: set block(below: 1em)

  show heading.where(level: 1): set text(size: heading-1)
  show heading.where(level: 2): set text(size: heading-2)
  show heading.where(level: 3): set text(size: heading-3)

  set figure(numbering: "1")
  body
}

#let title-page(
  title: "Typst tutorial",
  author: "",
  school: "Slovenská technická univerzita v Bratislave",
  faculty: "Fakulta elektrotechniky a informatiky",
  year: "",
  reg-nr: "",
  study-programme: "",
  study-field: "",
  supervisor: "",
  consultant: none,
) = {
  align(center)[
    #text(size: 14pt, weight: "bold")[#upper(school)] \
    #text(size: 14pt, weight: "bold")[#faculty]
    #v(4cm)
    #text(size: 20pt, weight: "bold")[#title]
    #v(2cm)
  ]
  // Info table
  grid(
    columns: (auto, 1fr),
    gutter: 1cm,
    [Študijný program:], study-programme,
    [Študijný odbor:], study-field,
    [Školiteľ:], supervisor,
    // if consultant != none { ("Konzultant:", consultant) },
  )
  v(1fr)
  align(bottom + left)[
    #year #h(1fr) #author
  ]
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
  /// -> content | string
  title: [Abstract],
) = {
  // English abstract
  // v(50pt, weak: true)
  set text(heading-1)
  // show: pad.with(x: 1cm)
  align(left, text(font: font, strong(title)))
  v(20pt, weak: true)
  set text(text-size)
  content
}

#let print-keywordsSK() = {
  set text(heading-2)
  // show: pad.with(x: 1cm)
  align(left, text(font: font, strong([Kľúčové slová])))
  v(20pt, weak: true)
  set text(text-size)

  [#context keywordsSK.get()]

  pagebreak()
}

#let print-keywordsEN() = {
  set text(heading-2)
  // show: pad.with(x: 1cm)
  align(left, text(font: font, strong([Keywords])))
  v(20pt, weak: true)
  set text(text-size)

  [#context keywordsEN.get()]

  pagebreak()
}

// cislovanie a nadpis medzera vatsia
// pozriet ostatne skolske sablony, best practises.... najlepšia: https://github.com/npikall/vienna-tech
// postupne prepisovat sablonu
