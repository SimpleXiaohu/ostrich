;test regex ^(?:\+|00)91\h*-\h*\d{10}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "+") (str.to_re "00")) (re.++ (str.to_re "91") (re.++ (re.* (str.to_re "h")) (re.++ (str.to_re "-") (re.++ (re.* (str.to_re "h")) ((_ re.loop 10 10) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)