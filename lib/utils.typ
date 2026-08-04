#let translate(key, lang: none) = context i18n.at(if lang != none { lang } else { doc-lang.get() }).at(key)


#let start-numbering(body) = {
  set page(numbering: "1")
  body
}