;test regex [^(_x005F)]_x[0-9A-F]{4}_
(declare-const X String)
(assert (str.in_re X (re.++ (re.inter (re.diff re.allchar (str.to_re "(")) (re.inter (re.diff re.allchar (str.to_re "_")) (re.inter (re.diff re.allchar (str.to_re "x")) (re.inter (re.diff re.allchar (str.to_re "005")) (re.inter (re.diff re.allchar (str.to_re "F")) (re.diff re.allchar (str.to_re ")"))))))) (re.++ (str.to_re "_") (re.++ (str.to_re "x") (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "_")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)