;test regex [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.+ (re.union (str.to_re "-") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re ".")))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "%") (re.union (str.to_re "&") (re.union (str.to_re "=") (str.to_re "?"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)