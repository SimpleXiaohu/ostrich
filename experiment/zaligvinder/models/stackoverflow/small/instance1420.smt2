;test regex ([a-z]+[a-z0-9]*[_\.]?[a-z0-9]+)@(([a-z0-9]+\.)*[a-z0-9]{2,}\.)+[a-z]{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.+ (re.range "a" "z")) (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re "_") (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (re.++ (str.to_re "@") (re.++ (re.+ (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "."))) (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re ".")))) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 2 2) (re.range "a" "z"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)