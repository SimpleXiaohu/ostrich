;test regex ^[0-9A-HJ-NP-Za-km-z]{70,80}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 70 80) (re.union (re.range "0" "9") (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.union (re.range "P" "Z") (re.union (re.range "a" "k") (re.range "m" "z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)