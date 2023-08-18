;test regex ([a-z]{1,2}?)??([a-z]{1,2}?)??([a-z]{1,2}?)??([a-z]{1,2})??\.txt
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt? ((_ re.loop? 1 2) (re.range "a" "z"))) (re.++ (re.opt? ((_ re.loop? 1 2) (re.range "a" "z"))) (re.++ (re.opt? ((_ re.loop? 1 2) (re.range "a" "z"))) (re.++ (re.opt? ((_ re.loop 1 2) (re.range "a" "z"))) (re.++ (str.to_re ".") (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)