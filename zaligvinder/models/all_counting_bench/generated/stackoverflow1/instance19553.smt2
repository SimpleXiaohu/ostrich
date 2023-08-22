;test regex ([.\n]{1,}) abc
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.union (str.to_re ".") (str.to_re "\u{0a}"))) ((_ re.loop 1 1) (re.union (str.to_re ".") (str.to_re "\u{0a}")))) (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (str.to_re "c")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)