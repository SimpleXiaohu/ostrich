;test regex [a-zA-Z]\d{8}|d{8}[a-zA-Z]
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ ((_ re.loop 8 8) (str.to_re "d")) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)