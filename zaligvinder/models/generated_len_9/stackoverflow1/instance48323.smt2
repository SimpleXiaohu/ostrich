;test regex (\r\n){2,}/\n\n
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) ((_ re.loop 2 2) (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}")))) (re.++ (str.to_re "/") (re.++ (str.to_re "\u{0a}") (str.to_re "\u{0a}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)