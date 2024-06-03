;test regex ^(6553[0-5]|655[0-2]\d|65[0-4]\d\d|6[0-4]\d{3}|5\d{4}|49[2-9]\d\d|491[6-9]\d|4915[2-9])$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "6553") (re.range "0" "5")) (re.++ (str.to_re "655") (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (str.to_re "65") (re.++ (re.range "0" "4") (re.++ (re.range "0" "9") (re.range "0" "9"))))) (re.++ (str.to_re "6") (re.++ (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re "5") ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (str.to_re "49") (re.++ (re.range "2" "9") (re.++ (re.range "0" "9") (re.range "0" "9"))))) (re.++ (str.to_re "491") (re.++ (re.range "6" "9") (re.range "0" "9")))) (re.++ (str.to_re "4915") (re.range "2" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)