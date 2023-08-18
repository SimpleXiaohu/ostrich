;test regex uid=swg2*([C]?[1247]\d{6})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "s") (re.++ (str.to_re "w") (re.++ (str.to_re "g") (re.++ (re.* (str.to_re "2")) (re.++ (re.opt (str.to_re "C")) (re.++ (str.to_re "1247") ((_ re.loop 6 6) (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)