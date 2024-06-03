;test regex MS\d:(\d){15}(?:\r?\n?)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "M") (re.++ (str.to_re "S") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ ((_ re.loop 15 15) (re.range "0" "9")) (re.++ (re.opt (str.to_re "\u{0d}")) (re.opt (str.to_re "\u{0a}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)