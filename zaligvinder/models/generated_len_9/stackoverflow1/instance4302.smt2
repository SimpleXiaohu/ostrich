;test regex ^(((\+|00|)98|)|[0])?[9][01239]\d{8}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (re.union (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "") (re.union (str.to_re "+") (str.to_re "00"))) (str.to_re "")) (str.to_re "98"))) (str.to_re "")) (str.to_re "0"))) (re.++ (str.to_re "9") (re.++ (str.to_re "01239") ((_ re.loop 8 8) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)