;test regex ^ ([a-z][a-z\_-0-9]+){6,30}  $
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ ((_ re.loop 6 30) (re.++ (re.range "a" "z") (re.+ (re.union (re.range "a" "z") (re.union (re.range "_" "0") (re.union (str.to_re "-") (str.to_re "9"))))))) (re.++ (str.to_re " ") (str.to_re " "))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)