;test regex ":0*13733([0-3][0-9]{4}|4([0-3][0-9]{3}|4([0-7][0-9]{2}|800))):"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ":") (re.++ (re.* (str.to_re "0")) (re.++ (str.to_re "13733") (re.++ (re.union (re.++ (re.range "0" "3") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "4") (re.union (re.++ (re.range "0" "3") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "4") (re.union (re.++ (re.range "0" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "800")))))) (re.++ (str.to_re ":") (str.to_re "\u{22}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)