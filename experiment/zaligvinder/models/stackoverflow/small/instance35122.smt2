;test regex ^([0-9][a-zA-Z][0-9a-zA-Z]{6,}|[0-9]{2}[a-zA-Z][0-9a-zA-Z]{5,}|[0-9]{3}[a-zA-Z][0-9a-zA-Z]{4,}|[0-9]{4}[a-zA-Z][0-9a-zA-Z]{3,}|[0-9]{5}[a-zA-Z][0-9a-zA-Z]{2,}|[0-9]{6}[a-zA-Z][0-9a-zA-Z]+|[0-9]{7}[a-zA-Z][0-9a-zA-Z]*|[a-zA-Z][0-9][0-9a-zA-Z]{6,}|[a-zA-Z]{2}[0-9][0-9a-zA-Z]{5,}|[a-zA-Z]{3}[0-9][0-9a-zA-Z]{4,}|[a-zA-Z]{4}[0-9][0-9a-zA-Z]{3,}|[a-zA-Z]{5}[0-9][0-9a-zA-Z]{2,}|[a-zA-Z]{6}[0-9][0-9a-zA-Z]+|[a-zA-Z]{7}[0-9][0-9a-zA-Z]*)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.range "0" "9") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (re.++ ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (re.++ ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)