;test regex (?:(?:^KC[\\x00-\\xff]{50}))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "K") (re.++ (str.to_re "C") ((_ re.loop 50 50) (re.union (str.to_re "\\") (re.union (str.to_re "x") (re.union (re.range "00" "\\") (re.union (str.to_re "x") (re.union (str.to_re "f") (str.to_re "f"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)