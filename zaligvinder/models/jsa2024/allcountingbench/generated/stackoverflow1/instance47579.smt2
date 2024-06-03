;test regex [\xE0-\xEF][\u{80}-\xBF]{2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "\u{e0}" "\u{ef}") ((_ re.loop 2 2) (re.range "\u{80}" "\u{bf}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)