;test regex (?:^|\G)(?:.{4})*?(ABCD)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (str.to_re "G")) (re.++ (re.* ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (str.to_re "D"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)