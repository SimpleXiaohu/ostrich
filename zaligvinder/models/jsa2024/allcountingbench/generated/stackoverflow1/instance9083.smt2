;test regex :%s/\v^([^,]*\zs,){2}.*//
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re ":") (re.++ (str.to_re "%") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (str.to_re "\u{0B}"))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re ","))) (re.++ (str.to_re "z") (str.to_re "s"))) (str.to_re ","))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (str.to_re "/"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)