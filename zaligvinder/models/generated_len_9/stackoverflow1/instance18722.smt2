;test regex ^[A-HJ-NP-Z][A-HJ-NP-Z0-9]{3}[A-HJ-NP-Z]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.range "P" "Z"))) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.union (re.range "P" "Z") (re.range "0" "9"))))) (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.range "P" "Z")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)