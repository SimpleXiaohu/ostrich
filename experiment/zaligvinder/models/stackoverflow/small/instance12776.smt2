;test regex d{4}[_]d{4}[_]d{2}[_]d{2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (str.to_re "d")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 4 4) (str.to_re "d")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "_") ((_ re.loop 2 2) (str.to_re "d"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)