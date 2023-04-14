;test regex (\\d{3}-\\d{3}-\\d{3})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "d")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)