;test regex '\(.+\)PID[|]{19}'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "(") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ")") (re.++ (str.to_re "P") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ ((_ re.loop 19 19) (str.to_re "|")) (str.to_re "\u{27}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)