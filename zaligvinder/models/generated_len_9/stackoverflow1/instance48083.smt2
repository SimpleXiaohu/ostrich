;test regex @^ {4}([A-Za-z]{5,}) ([0-9]+)$@
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "@") (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (str.to_re " ")) (re.++ (re.++ (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re " ") (re.+ (re.range "0" "9"))))))) (re.++ (str.to_re "") (str.to_re "@")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)