;test regex ([A-Z][A-Za-z ]+), ([A-Z]{2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " "))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") ((_ re.loop 2 2) (re.range "A" "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)