;test regex ^(?:336[0-8][0-9]|33[0-5][0-9]{2}|3[0-2][0-9]{3}|[12][0-9]{4}|[1-9][0-9]{1,3}|[1-9])A{1,3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "336") (re.++ (re.range "0" "8") (re.range "0" "9"))) (re.++ (str.to_re "33") (re.++ (re.range "0" "5") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "3") (re.++ (re.range "0" "2") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re "12") ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (re.range "1" "9") ((_ re.loop 1 3) (re.range "0" "9")))) (re.range "1" "9")) ((_ re.loop 1 3) (str.to_re "A")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)