;test regex ([0-8][0-9]{4}|97[0-6][0-9]{2}|98[06-9][0-9]{2}|9[0-69][0-9]{3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.range "0" "8") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "97") (re.++ (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "98") (re.++ (re.range "06" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "9") (re.++ (re.range "0" "69") ((_ re.loop 3 3) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)