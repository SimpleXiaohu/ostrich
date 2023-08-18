;test regex ^[A-z] ([0-z]{3}) [A-z] [0-z]{3} L (\d{6} \d{7})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.range "A" "z") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "z")) (re.++ (str.to_re " ") (re.++ (re.range "A" "z") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "z")) (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re " ") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (str.to_re " ") ((_ re.loop 7 7) (re.range "0" "9")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)