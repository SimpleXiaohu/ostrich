;test regex \d{5}_\w*_\d{4}-\d{2}-\d{2}\.(acc|zip|app|xml|def|enr|exm|fpr|pnd|trm)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "_") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "c") (str.to_re "c"))) (re.++ (str.to_re "z") (re.++ (str.to_re "i") (str.to_re "p")))) (re.++ (str.to_re "a") (re.++ (str.to_re "p") (str.to_re "p")))) (re.++ (str.to_re "x") (re.++ (str.to_re "m") (str.to_re "l")))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "f")))) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "r")))) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "m")))) (re.++ (str.to_re "f") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "d")))) (re.++ (str.to_re "t") (re.++ (str.to_re "r") (str.to_re "m"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)