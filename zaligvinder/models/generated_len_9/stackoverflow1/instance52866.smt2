;test regex (http\:\/\/){0,1}(www){0,1}[\.]{0,1}[a-zA-Z0-9_]+\.[a-zA-Z0-9_]+(\/{1}[a-zA-Z0-9_\.]+)*
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))))))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "w")))) (re.++ ((_ re.loop 0 1) (str.to_re ".")) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.* (re.++ ((_ re.loop 1 1) (str.to_re "/")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (str.to_re "."))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)