;test regex .attr("regex", "^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?   [13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$quot;)
(declare-const X String)
(assert (str.in_re X (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "\u{22}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re "") (re.union (re.++ (re.union (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re "/") (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (str.to_re "13456789"))))) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re "/") (re.union (str.to_re "29") (str.to_re "30"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (str.to_re "/") (str.to_re "31")))) (re.++ (str.to_re "/") (re.++ (re.union (str.to_re "19") (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.++ (str.to_re "29") (re.++ (str.to_re "/") (re.union (re.++ (re.union (str.to_re "19") (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.union (re.++ (str.to_re "0") (str.to_re "48")) (re.++ (str.to_re "2468") (str.to_re "048"))) (re.++ (str.to_re "13579") (str.to_re "26")))) (re.++ (re.union (re.++ (str.to_re "2468") (str.to_re "048")) (re.++ (str.to_re "3579") (str.to_re "26"))) (str.to_re "00"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)