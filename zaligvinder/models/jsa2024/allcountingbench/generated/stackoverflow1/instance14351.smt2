;test regex (\D\w{1,11})\\0(.{1,12})\\0(.*)\\0
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.diff re.allchar (re.range "0" "9")) ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re "\\") (re.++ (str.to_re "0") (re.++ ((_ re.loop 1 12) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (str.to_re "0") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (str.to_re "0")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)