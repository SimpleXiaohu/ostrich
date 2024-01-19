;test regex "(?:[PNBRQK]?[a-h]?[1-8]?x?[a-h][1-8](?:\=[PNBRQK])?|O(-?O){1,2})[\+#]?(\s*[\!\?]+)?";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "P") (re.union (str.to_re "N") (re.union (str.to_re "B") (re.union (str.to_re "R") (re.union (str.to_re "Q") (str.to_re "K"))))))) (re.++ (re.opt (re.range "a" "h")) (re.++ (re.opt (re.range "1" "8")) (re.++ (re.opt (str.to_re "x")) (re.++ (re.range "a" "h") (re.++ (re.range "1" "8") (re.opt (re.++ (str.to_re "=") (re.union (str.to_re "P") (re.union (str.to_re "N") (re.union (str.to_re "B") (re.union (str.to_re "R") (re.union (str.to_re "Q") (str.to_re "K")))))))))))))) (re.++ (str.to_re "O") ((_ re.loop 1 2) (re.++ (re.opt (str.to_re "-")) (str.to_re "O"))))) (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "#"))) (re.++ (re.opt (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.+ (re.union (str.to_re "!") (str.to_re "?"))))) (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)