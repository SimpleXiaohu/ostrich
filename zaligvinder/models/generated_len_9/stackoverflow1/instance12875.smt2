;test regex \h*(\r?\n|\r)(?:\h*\1){2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (str.to_re "h")) (re.++ (re.union (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}")) (str.to_re "\u{0d}")) (re.++ (re.* (re.++ (re.* (str.to_re "h")) (_ re.reference 1))) ((_ re.loop 2 2) (re.++ (re.* (str.to_re "h")) (_ re.reference 1))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)