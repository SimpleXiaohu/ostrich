;test regex String.scan(\([A-Z \s*]{1,18})(^?!(\([A-Z]{1,3}\)))\)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (re.++ (str.to_re "(") ((_ re.loop 1 18) (re.union (re.range "A" "Z") (re.union (str.to_re " ") (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "*")))))) (re.++ (re.++ (re.opt (str.to_re "")) (re.++ (str.to_re "!") (re.++ (str.to_re "(") (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) (str.to_re ")"))))) (str.to_re ")"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)