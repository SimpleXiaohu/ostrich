;test regex ^((\+91)?-?[0\+\(]*\d{2,3}[-\s\)]*\.?\d{3,4}[-\s]*\.?[0-9]{4})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "+") (str.to_re "91"))) (re.++ (re.opt (str.to_re "-")) (re.++ (re.* (re.union (str.to_re "0") (re.union (str.to_re "+") (str.to_re "(")))) (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (re.* (re.union (str.to_re "-") (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re ")")))) (re.++ (re.opt (str.to_re ".")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.++ (re.* (re.union (str.to_re "-") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (re.opt (str.to_re ".")) ((_ re.loop 4 4) (re.range "0" "9")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)