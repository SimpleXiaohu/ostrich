;test regex ^\+(352|91|33|49|32)(\d{8,15})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "+") (re.++ (re.union (re.union (re.union (re.union (str.to_re "352") (str.to_re "91")) (str.to_re "33")) (str.to_re "49")) (str.to_re "32")) ((_ re.loop 8 15) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)