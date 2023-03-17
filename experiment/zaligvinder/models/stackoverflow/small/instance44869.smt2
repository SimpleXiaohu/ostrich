;test regex (\d{1}|\d{2}|\d{3}|\d{4})bhp
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "b") (re.++ (str.to_re "h") (str.to_re "p"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)