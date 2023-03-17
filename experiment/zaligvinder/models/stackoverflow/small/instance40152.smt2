;test regex ^((4\d{3})|(5[1-5]\d{2})|(6011))-?\d{4}-?\d{4}-?\d{4}|3[4,7]\d{13}$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.++ (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to_re "6011")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))))))))) (re.++ (re.++ (str.to_re "3") (re.++ (re.union (str.to_re "4") (re.union (str.to_re ",") (str.to_re "7"))) ((_ re.loop 13 13) (re.range "0" "9")))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)