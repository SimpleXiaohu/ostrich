;test regex ^[S][STWXY]\d{4}$|\d{6}$|\d{8}$|\d{10}$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "W") (re.union (str.to_re "X") (str.to_re "Y"))))) ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re "")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re ""))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re ""))) (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)