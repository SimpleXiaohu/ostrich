;test regex ^PGTIOU-[0-9]{10,}-[a-zA-Z0-9]{32}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "P") (re.++ (str.to_re "G") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "O") (re.++ (str.to_re "U") (re.++ (str.to_re "-") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "-") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)