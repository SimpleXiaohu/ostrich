;test regex ^[A-Z0-9]{3}(?:List)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.++ (str.to_re "L") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (str.to_re "t"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)