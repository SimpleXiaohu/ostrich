;test regex ^[A-HJK]{2}\d{2}[A-HJK]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "H") (re.union (str.to_re "J") (str.to_re "K")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.range "A" "H") (re.union (str.to_re "J") (str.to_re "K")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)