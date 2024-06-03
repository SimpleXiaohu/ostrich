;test regex (\d{1,2})((?:(?:O-O(?:-O)?)|(?:[KQNBR][a-h]?x?[a-h]x?[1-8])|(?:[a-h]x?[a-h]?[1-8]))\+?)((?:(?:O-O(?:-O)?)|(?:[KQNBR][a-h]?x?[a-h]x?[1-8])|(?:[a-h]x?[a-h]?[1-8]))\+?)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.++ (re.union (re.union (re.++ (str.to_re "O") (re.++ (str.to_re "-") (re.++ (str.to_re "O") (re.opt (re.++ (str.to_re "-") (str.to_re "O")))))) (re.++ (re.union (str.to_re "K") (re.union (str.to_re "Q") (re.union (str.to_re "N") (re.union (str.to_re "B") (str.to_re "R"))))) (re.++ (re.opt (re.range "a" "h")) (re.++ (re.opt (str.to_re "x")) (re.++ (re.range "a" "h") (re.++ (re.opt (str.to_re "x")) (re.range "1" "8"))))))) (re.++ (re.range "a" "h") (re.++ (re.opt (str.to_re "x")) (re.++ (re.opt (re.range "a" "h")) (re.range "1" "8"))))) (re.opt (str.to_re "+"))) (re.++ (re.union (re.union (re.++ (str.to_re "O") (re.++ (str.to_re "-") (re.++ (str.to_re "O") (re.opt (re.++ (str.to_re "-") (str.to_re "O")))))) (re.++ (re.union (str.to_re "K") (re.union (str.to_re "Q") (re.union (str.to_re "N") (re.union (str.to_re "B") (str.to_re "R"))))) (re.++ (re.opt (re.range "a" "h")) (re.++ (re.opt (str.to_re "x")) (re.++ (re.range "a" "h") (re.++ (re.opt (str.to_re "x")) (re.range "1" "8"))))))) (re.++ (re.range "a" "h") (re.++ (re.opt (str.to_re "x")) (re.++ (re.opt (re.range "a" "h")) (re.range "1" "8"))))) (re.opt (str.to_re "+")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)