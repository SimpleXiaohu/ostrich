;test regex ^(?:(?:[12][0-9]|0?[1-9])/0?2|(?:30|[12][0-9]|0?[1-9])/(?:0?[469]|11)|(?:3[01]|[12][0-9]|0?[1-9])/(?:0?[13578]|1[02]))/\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (re.union (re.++ (str.to_re "12") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.++ (str.to_re "/") (re.++ (re.opt (str.to_re "0")) (str.to_re "2")))) (re.++ (re.union (re.union (str.to_re "30") (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.++ (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "469")) (str.to_re "11"))))) (re.++ (re.union (re.union (re.++ (str.to_re "3") (str.to_re "01")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.++ (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02")))))) (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)