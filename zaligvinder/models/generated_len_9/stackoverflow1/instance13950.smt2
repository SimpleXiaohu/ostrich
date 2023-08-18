;test regex (00[1-9]|0[1-9]0|0[1-9]{2}|[1-9]00|[1-9]{3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.++ (str.to_re "00") (re.range "1" "9")) (re.++ (str.to_re "0") (re.++ (re.range "1" "9") (str.to_re "0")))) (re.++ (str.to_re "0") ((_ re.loop 2 2) (re.range "1" "9")))) (re.++ (re.range "1" "9") (str.to_re "00"))) ((_ re.loop 3 3) (re.range "1" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)