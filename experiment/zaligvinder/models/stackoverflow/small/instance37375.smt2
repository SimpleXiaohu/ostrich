;test regex str1\(str2\(.{5}\),str2\(.{8}\)\)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "1") (re.++ (str.to_re "(") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "2") (re.++ (str.to_re "(") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (str.to_re ")")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "2") (re.++ (str.to_re "(") (re.++ ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ")") (str.to_re ")"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)