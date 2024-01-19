;test regex (.*(0[1]|1[3-7]):\d\d:\d\d){1}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 1) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "1")) (re.++ (str.to_re "1") (re.range "3" "7"))) (re.++ (str.to_re ":") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "9") (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)