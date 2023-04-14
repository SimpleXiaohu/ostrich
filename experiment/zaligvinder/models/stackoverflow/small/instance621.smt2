;test regex \A[1-9][0-9]{0,3}(?:,[1-9][0-9]{0,3})*\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.* (re.++ (str.to_re ",") (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))))) (str.to_re "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)