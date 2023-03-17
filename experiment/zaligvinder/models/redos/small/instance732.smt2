;test regex (?:0[xX])[A-F0-9]{40}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "0") (re.union (str.to_re "x") (str.to_re "X"))) ((_ re.loop 40 40) (re.union (re.range "A" "F") (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)