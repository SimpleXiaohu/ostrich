;test regex \+?-?\/?\d{0,2}\d{0,1}\.?[kmbt]?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.++ (re.opt (str.to_re "-")) (re.++ (re.opt (str.to_re "/")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "k") (re.union (str.to_re "m") (re.union (str.to_re "b") (str.to_re "t")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)