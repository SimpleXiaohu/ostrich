;test regex (?:B\d{2}\w{7}|\d{9}X)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "B") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))) (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "X")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)