;test regex ([0-2]{0,1}[0-9])([AaPp][Mm])
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 0 1) (re.range "0" "2")) (re.range "0" "9")) (re.++ (re.union (str.to_re "A") (re.union (str.to_re "a") (re.union (str.to_re "P") (str.to_re "p")))) (re.union (str.to_re "M") (str.to_re "m"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)