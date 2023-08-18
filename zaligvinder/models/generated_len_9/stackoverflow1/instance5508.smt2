;test regex ^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (str.to_re "") (re.++ (str.to_re "65") (re.++ (re.range "4" "9") ((_ re.loop 13 13) (re.range "0" "9"))))) (re.++ (str.to_re "64") (re.++ (re.range "4" "9") ((_ re.loop 13 13) (re.range "0" "9"))))) (re.++ (str.to_re "6011") ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (re.++ (str.to_re "622") (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "12") (re.range "6" "9")) (re.++ (str.to_re "1") (re.++ (re.range "3" "9") (re.range "0" "9")))) (re.++ (re.range "2" "8") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "9") (re.++ (str.to_re "01") (re.range "0" "9")))) (re.++ (str.to_re "92") (re.range "0" "5"))) ((_ re.loop 10 10) (re.range "0" "9")))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)