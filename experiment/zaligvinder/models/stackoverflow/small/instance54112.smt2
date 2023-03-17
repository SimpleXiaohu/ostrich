;test regex ^[_]*([a-z0-9]+(.|_*)?)+@([a-z][a-z0-9\-]+(.|-*.))+[a-z]{2,6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (str.to_re "_")) (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.union (re.diff re.allchar (str.to_re "\n")) (re.* (str.to_re "_")))))) (re.++ (str.to_re "@") (re.++ (re.+ (re.++ (re.range "a" "z") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))) (re.union (re.diff re.allchar (str.to_re "\n")) (re.++ (re.* (str.to_re "-")) (re.diff re.allchar (str.to_re "\n"))))))) ((_ re.loop 2 6) (re.range "a" "z"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)