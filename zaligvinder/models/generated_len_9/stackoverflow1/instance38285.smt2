;test regex ^D$|^D0$|^D00([DPR]0{0,2})*$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (str.to_re "D")) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "D") (str.to_re "0"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "D") (re.++ (str.to_re "00") (re.* (re.++ (re.union (str.to_re "D") (re.union (str.to_re "P") (str.to_re "R"))) ((_ re.loop 0 2) (str.to_re "0"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)