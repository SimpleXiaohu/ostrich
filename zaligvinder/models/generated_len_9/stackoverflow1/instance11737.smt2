;test regex r"((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)([ (\[]?(\.|dot)[ )\]]?(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))) ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "(") (str.to_re "[")))) (re.++ (re.union (str.to_re ".") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "t")))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re ")") (str.to_re "]")))) (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))))))) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)