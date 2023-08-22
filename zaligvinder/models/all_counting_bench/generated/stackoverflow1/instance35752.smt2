;test regex (0 ?)([1-8] ?){1}(?:(\d ?){8}|(\d ?){9})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "0") (re.opt (str.to_re " "))) (re.++ ((_ re.loop 1 1) (re.++ (re.range "1" "8") (re.opt (str.to_re " ")))) (re.union ((_ re.loop 8 8) (re.++ (re.range "0" "9") (re.opt (str.to_re " ")))) ((_ re.loop 9 9) (re.++ (re.range "0" "9") (re.opt (str.to_re " ")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)