;test regex ([A-Za-z]{1,1} [A-Za-z+]{3,100})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (str.to_re " ") ((_ re.loop 3 100) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re "+"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)