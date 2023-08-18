;test regex "[a-zA-Z1-9_.]{3,10}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 10) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "1" "9") (re.union (str.to_re "_") (str.to_re ".")))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)