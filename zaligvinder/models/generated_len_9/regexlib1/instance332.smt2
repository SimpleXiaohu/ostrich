;test regex ^([07][1-7]|1[0-6]|2[0-7]|[35][0-9]|[468][0-8]|9[0-589])-?\d{7}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "07") (re.range "1" "7")) (re.++ (str.to_re "1") (re.range "0" "6"))) (re.++ (str.to_re "2") (re.range "0" "7"))) (re.++ (str.to_re "35") (re.range "0" "9"))) (re.++ (str.to_re "468") (re.range "0" "8"))) (re.++ (str.to_re "9") (re.range "0" "589"))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)