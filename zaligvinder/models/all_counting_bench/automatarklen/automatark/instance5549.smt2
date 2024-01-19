(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /[1-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}/H
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "1" "9") (re.range "A" "F"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "/H\u{0a}"))))
; ^(\+\d{2}[ \-]{0,1}){0,1}(((\({0,1}[ \-]{0,1})0{0,1}\){0,1}[2|3|7|8]{1}\){0,1}[ \-]*(\d{4}[ \-]{0,1}\d{4}))|(1[ \-]{0,1}(300|800|900|902)[ \-]{0,1}((\d{6})|(\d{3}[ \-]{0,1}\d{3})))|(13[ \-]{0,1}([\d \-]{5})|((\({0,1}[ \-]{0,1})0{0,1}\){0,1}4{1}[\d \-]{8,10})))$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))))) (re.union (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re ")")) ((_ re.loop 1 1) (re.union (str.to_re "2") (str.to_re "|") (str.to_re "3") (str.to_re "7") (str.to_re "8"))) (re.opt (str.to_re ")")) (re.* (re.union (str.to_re " ") (str.to_re "-"))) (re.opt (str.to_re "(")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "1") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (str.to_re "300") (str.to_re "800") (str.to_re "900") (str.to_re "902")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re "13") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to_re " ") (str.to_re "-")))) (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re ")")) ((_ re.loop 1 1) (str.to_re "4")) ((_ re.loop 8 10) (re.union (re.range "0" "9") (str.to_re " ") (str.to_re "-"))) (re.opt (str.to_re "(")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
