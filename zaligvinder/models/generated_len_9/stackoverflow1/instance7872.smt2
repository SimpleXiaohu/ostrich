;test regex (?:\\d{4,5}[0-9a-zA-Z]{0,2}(?:\\.[0-9a-zA-Z]{1,2})?|[a-zA-Z]{3}-\\d{6})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "\\") (re.++ ((_ re.loop 4 5) (str.to_re "d")) (re.++ ((_ re.loop 0 2) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.opt (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))))) (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)