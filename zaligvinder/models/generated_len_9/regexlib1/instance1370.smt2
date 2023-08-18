;test regex ((0[13-7]|1[1235789]|[257][0-9]|3[0-35-9]|4[0124-9]|6[013-79]|8[0124-9]|9[0-5789])[0-9]{3}|10([2-9][0-9]{2}|1([2-9][0-9]|11[5-9]))|14([01][0-9]{2}|715))
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "0") (re.range "13" "7")) (re.++ (str.to_re "1") (str.to_re "1235789"))) (re.++ (str.to_re "257") (re.range "0" "9"))) (re.++ (str.to_re "3") (re.union (re.range "0" "35") (re.union (str.to_re "-") (str.to_re "9"))))) (re.++ (str.to_re "4") (re.range "0124" "9"))) (re.++ (str.to_re "6") (re.range "013" "79"))) (re.++ (str.to_re "8") (re.range "0124" "9"))) (re.++ (str.to_re "9") (re.range "0" "5789"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "10") (re.union (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "1") (re.union (re.++ (re.range "2" "9") (re.range "0" "9")) (re.++ (str.to_re "11") (re.range "5" "9"))))))) (re.++ (str.to_re "14") (re.union (re.++ (str.to_re "01") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "715"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)