;test regex "^[0-9]{10,10}[' '+()]$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (re.union (str.to_re "\u{27}") (re.union (str.to_re " ") (re.union (str.to_re "\u{27}") (re.union (str.to_re "+") (re.union (str.to_re "(") (str.to_re ")"))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)