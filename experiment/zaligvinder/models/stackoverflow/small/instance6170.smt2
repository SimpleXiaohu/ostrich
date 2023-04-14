;test regex \\-[A-Z]{4}_[0-9]{8}_[0-9]{6}_[a-zA-Z]{3}_([Ww]eb_)?[a-zA-Z0-9]{6}\\.[a-zA-Z0-9]{3,4}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "_") (re.++ (re.opt (re.++ (re.union (str.to_re "W") (str.to_re "w")) (re.++ (str.to_re "e") (re.++ (str.to_re "b") (str.to_re "_"))))) (re.++ ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 3 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)