;test regex \\+?380\\d\\d(?:-?\\d){7}
(declare-const X String)
(assert (str.in_re X (re.++ (re.+? (str.to_re "\\")) (re.++ (str.to_re "380") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") ((_ re.loop 7 7) (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "\\") (str.to_re "d"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)