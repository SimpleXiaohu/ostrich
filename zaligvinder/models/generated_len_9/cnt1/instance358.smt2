;test regex \A\$P\$([./0-9A-Za-z])([!-9-~]{8})\n\t\t\t\t([./0-9A-Za-z]{22})\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "$") (re.++ (str.to_re "P") (re.++ (str.to_re "$") (re.++ (re.union (str.to_re ".") (re.union (str.to_re "/") (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z"))))) (re.++ ((_ re.loop 8 8) (re.union (str.to_re "!") (re.union (str.to_re "-") (re.range "9" "~")))) (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "\u{09}") (re.++ (str.to_re "\u{09}") (re.++ (str.to_re "\u{09}") (re.++ (str.to_re "\u{09}") (re.++ ((_ re.loop 22 22) (re.union (str.to_re ".") (re.union (str.to_re "/") (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")))))) (str.to_re "z")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)