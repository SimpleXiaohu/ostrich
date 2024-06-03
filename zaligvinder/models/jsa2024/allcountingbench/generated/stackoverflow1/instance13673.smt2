;test regex ((-*\d+(?:px|e[mx]|%)?)\s(-*\d+(?:px|e[mx]|%)?)){1,1}?
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 1) (re.++ (re.++ (re.* (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (re.union (re.++ (str.to_re "p") (str.to_re "x")) (re.++ (str.to_re "e") (re.union (str.to_re "m") (str.to_re "x")))) (str.to_re "%"))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.* (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (re.union (re.++ (str.to_re "p") (str.to_re "x")) (re.++ (str.to_re "e") (re.union (str.to_re "m") (str.to_re "x")))) (str.to_re "%"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)