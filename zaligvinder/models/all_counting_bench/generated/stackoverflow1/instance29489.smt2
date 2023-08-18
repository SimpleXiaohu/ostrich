;test regex ([0-9]{1,3}(\\.[0-9]{1,3}){3})(.*?)HTTP/1.1
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 3) (re.range "0" "9")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "H") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (re.++ (str.to_re "P") (re.++ (str.to_re "/") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "1"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)