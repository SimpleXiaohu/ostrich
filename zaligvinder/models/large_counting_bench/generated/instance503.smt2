;test regex ^(?:(?:(?:[a-zA-z\-]+)\:\/{1,3})?(?:[a-zA-Z0-9])(?:[a-zA-Z0-9-\.]){1,61}[a-zA-Z0-9](?:\.[a-zA-Z]{2,})+|\[(?:(?:(?:[a-fA-F0-9]){1,4})(?::(?:[a-fA-F0-9]){1,4}){7}|::1|::)\]|(?:(?:[0-9]{1,3})(?:\.[0-9]{1,3}){3}))(?:\:[0-9]{1,5})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "z") (str.to_re "-")))) (re.++ (str.to_re ":") ((_ re.loop 1 3) (str.to_re "/"))))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ ((_ re.loop 1 61) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re ".")))))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.+ (re.++ (str.to_re ".") (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))))))))) (re.++ (str.to_re "[") (re.++ (re.union (re.union (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) ((_ re.loop 7 7) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9"))))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") (str.to_re "1")))) (re.++ (str.to_re ":") (str.to_re ":"))) (str.to_re "]")))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)