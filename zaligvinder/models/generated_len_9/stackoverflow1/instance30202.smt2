;test regex FIELD=((.)(.)?(.)?(.)?)\1{4,}(\2|\3|\4|\5)*;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "F") (re.++ (str.to_re "I") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "D") (re.++ (str.to_re "=") (re.++ (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.opt (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.diff re.allchar (str.to_re "\n"))) (re.opt (re.diff re.allchar (str.to_re "\n")))))) (re.++ (re.++ (re.* (_ re.reference 1)) ((_ re.loop 4 4) (_ re.reference 1))) (re.++ (re.* (re.union (re.union (re.union (_ re.reference 2) (_ re.reference 3)) (_ re.reference 4)) (_ re.reference 5))) (str.to_re ";"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)