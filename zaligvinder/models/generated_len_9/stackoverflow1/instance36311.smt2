;test regex (?:\d+\(t\).*){7,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "(") (re.++ (str.to_re "t") (re.++ (str.to_re ")") (re.* (re.diff re.allchar (str.to_re "\n")))))))) ((_ re.loop 7 7) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "(") (re.++ (str.to_re "t") (re.++ (str.to_re ")") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)