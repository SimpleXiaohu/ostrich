;test regex ([b-df-hj-np-tv-z])\1{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.range "b" "d") (re.union (re.range "f" "h") (re.union (re.range "j" "n") (re.union (re.range "p" "t") (re.range "v" "z"))))) (re.++ (re.* (_ re.reference 1)) ((_ re.loop 2 2) (_ re.reference 1))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)