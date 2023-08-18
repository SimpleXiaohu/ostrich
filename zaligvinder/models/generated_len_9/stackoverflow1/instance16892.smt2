;test regex [A-HJ-NP-RT-Y]{3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.union (re.range "P" "R") (re.range "T" "Y")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)