;test regex US-XXX-(?:201[0-9])(\d{5})|(?:201[0-9])-XXX-(\d{5})-US|(\d{5})-XXX-US/(?:201[0-9])
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re "-") (re.++ (str.to_re "X") (re.++ (str.to_re "X") (re.++ (str.to_re "X") (re.++ (str.to_re "-") (re.++ (re.++ (str.to_re "201") (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")))))))))) (re.++ (re.++ (str.to_re "201") (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "X") (re.++ (str.to_re "X") (re.++ (str.to_re "X") (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "U") (str.to_re "S"))))))))))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "X") (re.++ (str.to_re "X") (re.++ (str.to_re "X") (re.++ (str.to_re "-") (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re "/") (re.++ (str.to_re "201") (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)