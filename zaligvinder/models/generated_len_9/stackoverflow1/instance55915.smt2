;test regex ^(300(?:\.(?:[0-7]\d{0,2}|8(?:[0-5]\d?|60?)?))?|[0-2]?\d{0,2}(?:\.\d{0,3})?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "300") (re.opt (re.++ (str.to_re ".") (re.union (re.++ (re.range "0" "7") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to_re "8") (re.opt (re.union (re.++ (re.range "0" "5") (re.opt (re.range "0" "9"))) (re.opt (str.to_re "60"))))))))) (re.++ (re.opt (re.range "0" "2")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 3) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)