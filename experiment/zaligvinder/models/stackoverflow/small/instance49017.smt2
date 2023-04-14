;test regex ([A-Za-z]{2,5})-?[0-9]{1,15}[A-Za-z]{0,15}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 15) (re.range "0" "9")) ((_ re.loop 0 15) (re.union (re.range "A" "Z") (re.range "a" "z"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)