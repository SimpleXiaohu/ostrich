;test regex -?[0-9]{4}-(((0(1|3|5|7|8)|1(0|2))-(0[1-9]|(1|2)[0-9]|3[0-1]))|((0(4|6|9)|11)-(0[1-9]|(1|2)[0-9]|30))|(02-(0[1-9]|(1|2)[0-9])))((\+|-)([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9])|Z)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (re.union (re.union (re.union (str.to_re "1") (str.to_re "3")) (str.to_re "5")) (str.to_re "7")) (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9"))) (re.++ (str.to_re "3") (re.range "0" "1"))))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (re.union (str.to_re "4") (str.to_re "6")) (str.to_re "9"))) (str.to_re "11")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9"))) (str.to_re "30"))))) (re.++ (str.to_re "02") (re.++ (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))))) (re.opt (re.union (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (re.++ (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9")))))) (str.to_re "Z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)