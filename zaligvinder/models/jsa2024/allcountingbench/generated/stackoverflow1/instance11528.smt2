;test regex @"^(DDD|\d\d\d)\d{2}-\d{7}-\d$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "@") (str.to_re "\u{22}")) (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "D") (re.++ (str.to_re "D") (str.to_re "D"))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.++ (str.to_re "-") (re.range "0" "9")))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)