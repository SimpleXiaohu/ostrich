;test regex ([0-6]\d{2}|7[0-6]\d|77[0-2])
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "7") (re.++ (re.range "0" "6") (re.range "0" "9")))) (re.++ (str.to_re "77") (re.range "0" "2")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)