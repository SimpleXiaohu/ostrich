;test regex RMK\\sNDN\\s(\\d{1,4})\\s
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "M") (re.++ (str.to_re "K") (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re "N") (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 1 4) (str.to_re "d"))) (re.++ (str.to_re "\\") (str.to_re "s")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)