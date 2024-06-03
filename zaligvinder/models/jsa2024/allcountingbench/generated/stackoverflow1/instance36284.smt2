;test regex ^((0?[13578]|1[02])[\/.]31[\/.][1-9][0-9]{3})|(([01,1]|0[3-9]|1[1-2])[\/.](29|30)[\/.][1-9][0-9]{3})|((0?[1-9]|1[0-2])[\/.](0?[1-9]|1[0-9]|2[0-8])[\/.][1-9][0-9]{3})|([02,2][\/.]29[\/.](([1-9][0-9](04|08|[2468][048]|[13579][26]))|([2468][0]{3})))$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (str.to_re "31") (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))))))) (re.++ (re.union (re.union (re.union (str.to_re "01") (re.union (str.to_re ",") (str.to_re "1"))) (re.++ (str.to_re "0") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "1" "2"))) (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (re.union (str.to_re "29") (str.to_re "30")) (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))))))) (re.++ (re.++ (re.union (str.to_re "02") (re.union (str.to_re ",") (str.to_re "2"))) (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.++ (str.to_re "29") (re.++ (re.union (str.to_re "/") (str.to_re ".")) (re.union (re.++ (re.range "1" "9") (re.++ (re.range "0" "9") (re.union (re.union (re.union (str.to_re "04") (str.to_re "08")) (re.++ (str.to_re "2468") (str.to_re "048"))) (re.++ (str.to_re "13579") (str.to_re "26"))))) (re.++ (str.to_re "2468") ((_ re.loop 3 3) (str.to_re "0")))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)