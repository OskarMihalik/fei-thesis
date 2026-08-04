#import "@preview/numbly:0.1.0": numbly
#import "@preview/abbr:0.3.1"

#let text-size = 12pt
#let heading-1 = 20pt
#let heading-2 = 16pt
#let heading-3 = 14pt
#let first-line-indent = 1.5em
#let font = "New Computer Modern"
#let doc-lang = state("doc-lang", "sk")
#let variables-state = state("variables", (
  title: "Rozšírená šablóna záverečnej práce na FEI STU v Bratislave v systéme Typst",
  author: "RNDr. Juraj Chlpík, PhD.",
  reg-nr: "FEI-xxxx-xxxx",
  date: "31. decembra 2024",
  year: "2024",
  thesis-type: "Bakalárska práca",
  keywords: "záverečná práca, šablóna, Typst, formátovanie textu, citácie",
  keywords-en: "Final thesis, template, Typst, text formatting, citations",
  study-programme: "názov študijného programu",
  study-field: "názov študijného odboru",
  school: "Slovenská technická univerzita v Bratislave",
  faculty: "Fakulta elektrotechniky a informatiky",
  supervisor: "tituly Meno Priezvisko, tituly",
  consultant: "tituly Meno Priezvisko, tituly",
  training-workplace: "Názov školiaceho pracoviska",
))
#let i18n = (
  sk: (
    introduction: "Úvod",
    abstract: "Abstrakt",
    appendix-suffix: "Dodatok",
    glossary-title: "Zoznam značiek a skratiek",
    bibliography: "Literatúra",
    outline-code: "Zoznam výpisov kódov",
    outline-table: "Zoznam výpisov tabuliek",
    outline-image: "Zoznam výpisov obrázkov",
    code-caption: "Výpis kódu",
    conclusion: "Záver",
    ai-declaration: "Použitie nástrojov umelej inteligencie",
    thanks: "Poďakovanie",
    reg-nr-label: "Evidenčné číslo:",
    study-programme-label: "Študijný program:",
    study-field-label: "Študijný odbor:",
    training-workplace-label: "Školiace pracovisko:",
    supervisor-label: "Školiteľ:",
    consultant-label: "Konzultant:",
  ),
  en: (
    introduction: "Introduction",
    abstract: "Abstract",
    appendix-suffix: "Appendix",
    glossary-title: "List of Symbols and Abbreviations",
    bibliography: "Bibliography",
    outline-code: "List of listings",
    outline-table: "List of tables",
    outline-image: "List of images",
    code-caption: "Listing",
    conclusion: "Conclusion",
    ai-declaration: "Usage of artificial intelligence tools",
    thanks: "Thanks",
    reg-nr-label: "Registration number:",
    study-programme-label: "Study Programme:",
    study-field-label: "Study Field:",
    training-workplace-label: "Training Workplace:",
    supervisor-label: "Supervisor:",
    consultant-label: "Consultant:",
  ),
)

#let set-variables(vars) = {
  variables-state.update(vars)
}


#let fei-thesis(
  language: "sk",
  body,
) = {
  doc-lang.update(language)
  // Page setup
  set page(
    paper: "a4",
    margin: (top: 3cm, bottom: 3cm, left: 2.75cm, right: 2.75cm),
  )

  set par(leading: 10.5pt, first-line-indent: (amount: first-line-indent, all: false), justify: true, spacing: 1em)

  set text(size: text-size, font: font, lang: language)
  set pagebreak(weak: true)
  show heading: set block(below: 1em)

  show heading.where(level: 1): set text(size: heading-1)
  show heading.where(level: 2): set text(size: heading-2)
  show heading.where(level: 3): set text(size: heading-3)
  show heading.where(level: 4): set heading(outlined: false, numbering: none)
  show heading.where(level: 5): set heading(outlined: false, numbering: none)
  show heading.where(level: 6): set heading(outlined: false, numbering: none)

  set figure(numbering: "1")
  set heading(numbering: "1.1")
  show heading: it => block(
    if it.numbering != none { counter(heading).display(it.numbering) + h(1.2em) } + it.body,
  )

  set enum(
    full: true,
    numbering: numbly("{1:1}.", "{2:a)}", "{3:i})", "({4})"),
    spacing: 1.1em,
    indent: 1em,
  )

  set list(
    spacing: 1.1em,
    indent: 1em,
  )

  set math.equation(supplement: none, numbering: "1")
  set ref(supplement: none)
  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      [(#it)]
    } else {
      it
    }
  }

  set cite(style: "springer-lecture-notes-in-computer-science")

  set math.equation(numbering: "(1)")

  show figure.where(
    kind: table,
  ): set figure.caption(position: top)

  set figure(gap: 15pt)
  show figure: it => {
    set par(first-line-indent: (amount: first-line-indent, all: true))
    block(it, spacing: 2em)
  }

  show figure.where(kind: raw): set figure(supplement: [#translate("code-caption")])

  show figure.where(kind: raw): it => {
    align(left,  it.body)
    align(center, it.caption)
  }

  show: abbr.show-rule

  body
}