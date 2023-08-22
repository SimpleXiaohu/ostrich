;test regex ([a-zA-Z]{2,3} ){0,2}([a-zA-Z]{2,})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re " "))) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)