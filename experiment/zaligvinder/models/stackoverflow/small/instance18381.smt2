;test regex (A-Z(a-z){5,}* )+
(declare-const X String)
(assert (str.in_re X (re.+ (re.++ (str.to_re "A") (re.++ (str.to_re "-") (re.++ (str.to_re "Z") (re.++ (re.* (re.++ (re.* (re.++ (str.to_re "a") (re.++ (str.to_re "-") (str.to_re "z")))) ((_ re.loop 5 5) (re.++ (str.to_re "a") (re.++ (str.to_re "-") (str.to_re "z")))))) (str.to_re " "))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)