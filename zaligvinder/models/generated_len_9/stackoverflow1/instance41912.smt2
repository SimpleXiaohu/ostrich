;test regex ^[0-9]{4} +(([A-Z][a-z]+|[A-Z]\.|and|,) *)*\. *
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ (re.* (re.++ (re.union (re.union (re.union (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z"))) (re.++ (re.range "A" "Z") (str.to_re "."))) (re.++ (str.to_re "a") (re.++ (str.to_re "n") (str.to_re "d")))) (str.to_re ",")) (re.* (str.to_re " ")))) (re.++ (str.to_re ".") (re.* (str.to_re " ")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)