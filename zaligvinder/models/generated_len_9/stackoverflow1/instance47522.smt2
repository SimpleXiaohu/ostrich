;test regex ([^\\s*][\\l\\u\\w\\d\\s]{2,}) (\d)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "s")) (re.diff re.allchar (str.to_re "*")))) (re.++ (re.* (re.union (str.to_re "\\") (re.union (str.to_re "l") (re.union (str.to_re "\\") (re.union (str.to_re "u") (re.union (str.to_re "\\") (re.union (str.to_re "w") (re.union (str.to_re "\\") (re.union (str.to_re "d") (re.union (str.to_re "\\") (str.to_re "s"))))))))))) ((_ re.loop 2 2) (re.union (str.to_re "\\") (re.union (str.to_re "l") (re.union (str.to_re "\\") (re.union (str.to_re "u") (re.union (str.to_re "\\") (re.union (str.to_re "w") (re.union (str.to_re "\\") (re.union (str.to_re "d") (re.union (str.to_re "\\") (str.to_re "s"))))))))))))) (re.++ (str.to_re " ") (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)