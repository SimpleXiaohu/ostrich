;test regex (?:[0-9]{2}|[0-9]{6})[a-zA-Z]{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))) ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)