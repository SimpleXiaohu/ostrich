;test regex (\s?(?:rgb\((?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9]),\s*){2}(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\)|rgba\((?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9]),\s*){3}(?:0(\.[0-9])?|1|1.0)\))\s?)
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "b") (re.++ (str.to_re "(") (re.++ ((_ re.loop 2 2) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.range "0" "9")) (re.++ (str.to_re ",") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.range "0" "9")) (str.to_re ")"))))))) (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.range "0" "9")) (re.++ (str.to_re ",") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.opt (re.++ (str.to_re ".") (re.range "0" "9")))) (str.to_re "1")) (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "0")))) (str.to_re ")"))))))))) (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)