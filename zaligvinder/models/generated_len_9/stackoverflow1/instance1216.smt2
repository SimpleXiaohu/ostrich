;test regex ^[a-zA-Z0-9%+-\._]+&#64;[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,4}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "%") (re.union (str.to_re "+") (re.union (str.to_re "-") (re.union (str.to_re ".") (str.to_re "_"))))))))) (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "64") (re.++ (str.to_re ";") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (str.to_re "-")))))) (re.++ (str.to_re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)