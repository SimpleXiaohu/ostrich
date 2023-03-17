;test regex (0x)?[0-9a-fA-F]{5,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "0") (str.to_re "x"))) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)