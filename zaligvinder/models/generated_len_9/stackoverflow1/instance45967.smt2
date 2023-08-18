;test regex var re = /(?:\d{3}|\(\d{3}\))([\w-\/\.]?)\d{3}\1\d{4}/;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (re.union ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")))) (re.++ (re.opt (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "-") (re.union (str.to_re "/") (str.to_re "."))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (_ re.reference 1) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "/") (str.to_re ";")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)