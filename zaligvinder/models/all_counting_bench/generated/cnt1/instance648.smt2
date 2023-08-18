;test regex [0-9a-f]{32}(-data)?\.[0-9a-z]+
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "a")))))) (re.++ (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "a" "z"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)