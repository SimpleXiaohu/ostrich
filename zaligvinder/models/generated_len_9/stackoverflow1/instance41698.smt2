;test regex ^[1-9a-wA-WyzYZ][0-9A-Wa-wyz]{5}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "1" "9") (re.union (re.range "a" "w") (re.union (re.range "A" "W") (re.union (str.to_re "y") (re.union (str.to_re "z") (re.union (str.to_re "Y") (str.to_re "Z"))))))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (re.union (re.range "A" "W") (re.union (re.range "a" "w") (re.union (str.to_re "y") (str.to_re "z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)