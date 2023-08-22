;test regex ^ZZ=.*[\r\n]{1,2}.*[\r\n]{1,2}XXX
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "Z") (re.++ (str.to_re "Z") (re.++ (str.to_re "=") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 1 2) (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 1 2) (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (re.++ (str.to_re "X") (re.++ (str.to_re "X") (str.to_re "X")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)