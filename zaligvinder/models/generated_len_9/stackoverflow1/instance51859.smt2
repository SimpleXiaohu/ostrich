;test regex 0[0-9]{3}[wn][d0]0{2}[a-z0-9]{7}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "0") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.union (str.to_re "w") (str.to_re "n")) (re.++ (re.union (str.to_re "d") (str.to_re "0")) (re.++ ((_ re.loop 2 2) (str.to_re "0")) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)