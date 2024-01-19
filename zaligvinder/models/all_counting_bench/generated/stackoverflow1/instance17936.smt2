;test regex ([a-z]+(?:_[a-z]+){0,})(?:_(\d+)){0,1}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.+ (re.range "a" "z")) (re.++ (re.* (re.++ (str.to_re "_") (re.+ (re.range "a" "z")))) ((_ re.loop 0 0) (re.++ (str.to_re "_") (re.+ (re.range "a" "z")))))) ((_ re.loop 0 1) (re.++ (str.to_re "_") (re.+ (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)