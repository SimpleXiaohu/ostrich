;test regex __aaXX(.*?YY){1}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "_") (re.++ (str.to_re "_") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "X") (re.++ (str.to_re "X") ((_ re.loop 1 1) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "Y") (str.to_re "Y"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)