;test regex key_(live|test)_[A-Za-z0-9]{32}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re "_") (re.++ (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (str.to_re "e")))) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "t"))))) (re.++ (str.to_re "_") ((_ re.loop 32 32) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)