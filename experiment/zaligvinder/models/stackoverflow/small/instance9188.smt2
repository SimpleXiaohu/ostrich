;test regex "I([ ]{1,2})([a-zA-Z]|\d){2,13}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "I") (re.++ ((_ re.loop 1 2) (str.to_re " ")) (re.++ ((_ re.loop 2 13) (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9"))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)