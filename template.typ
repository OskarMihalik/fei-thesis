#import "@preview/numbly:0.1.0": numbly
#import "@preview/abbr:0.3.1"

#show: abbr.show-rule

#let text-size = 12pt
#let heading-1 = 20pt
#let heading-2 = 16pt
#let heading-3 = 14pt
#let font = "New Computer Modern"
#let keywordsSK = state("keywords-sk", [keyword 1, keyword 2])
#let keywordsEN = state("keywords-en", [keyword 1, keyword 2])
#let doc-lang = state("doc-lang", "sk")
#let i18n = (
  sk: (introduction: "Úvod", abstract: "Abstrakt", appendix-suffix: "Dodatok"),
  en: (introduction: "Introduction", abstract: "Abstract", appendix-suffix: "Appendix"),
)

#let translate(key, lang: none) = context i18n.at(if lang != none { lang } else { doc-lang.get() }).at(key)

#let fei-thesis(
  title: "",
  language: "sk",
  body,
) = {
  doc-lang.update(language)
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
  set heading(numbering: "1.1")
  show heading: it => block(
    if it.numbering != none { counter(heading).display(it.numbering) + h(1em) } + it.body,
  )

  set enum(
    full: true,
    numbering: numbly("{1:1}.", "{2:a)}", "{3:i})", "({4})"),
  )

  body
}

#let title-page(
  title: "Typst tutorial",
  author: "",
  school: "Slovenská technická univerzita v Bratislave",
  faculty: "Fakulta elektrotechniky a informatiky",
  year: "2026",
  reg-nr: "XXXXX",
  study-programme: "názov študijného programu",
  study-field: "študijný odbor",
  supervisor: "školiteľ",
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

#let fei-outline() = {
  show outline.entry.where(
    level: 1,
  ): it => strong(it)
  outline()
  pagebreak()
}

#let print-keywordsSK() = {
  set text(heading-2)
  align(left, text(font: font, strong([Kľúčové slová])))
  set text(text-size)

  [#context keywordsSK.get()]

  pagebreak()
}

#let print-keywordsEN() = {
  set text(heading-3)
  align(left, text(font: font, strong([Keywords])))
  set text(text-size)

  [#context keywordsEN.get()]

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


#let start-numbering(body) = {
  set page(numbering: "1")
  body
}

#let appendix-counter = counter("appendix")

#let appendix(content, title) = {
  appendix-counter.step()
  context {
    let suffix = i18n.at(doc-lang.get()).at("appendix-suffix")
    let letter = numbering("A", appendix-counter.get().first())
    heading(numbering: none)[#suffix #letter: #title]
  }

  content

  pagebreak()
}

// cislovanie a nadpis medzera vatsia
// pozriet ostatne skolske sablony, best practises.... najlepšia: https://github.com/npikall/vienna-tech
// postupne prepisovat sablonu
