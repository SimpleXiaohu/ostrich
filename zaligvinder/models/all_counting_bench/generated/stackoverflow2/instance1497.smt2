;test regex ^([a-z0-9]+([\-a-z0-9]*[a-z0-9]+)?\.){0,}([a-z0-9]+([\-a-z0-9]*[a-z0-9]+)?){1,63}(\.[a-z0-9]{2,7})+$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re ".")))) ((_ re.loop 0 0) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re "."))))) (re.++ ((_ re.loop 1 63) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 7) (re.union (re.range "a" "z") (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)