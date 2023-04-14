;test regex "[A-Z]{5}\\d[A-Z]{2}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{22}"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)