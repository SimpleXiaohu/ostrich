;test regex 0{0,2}[048]|0?[13579][26]|0?[2468][048]|1[02][048]|11[26]
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.++ ((_ re.loop 0 2) (str.to_re "0")) (str.to_re "048")) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "13579") (str.to_re "26")))) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "2468") (str.to_re "048")))) (re.++ (str.to_re "1") (re.++ (str.to_re "02") (str.to_re "048")))) (re.++ (str.to_re "11") (str.to_re "26")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)