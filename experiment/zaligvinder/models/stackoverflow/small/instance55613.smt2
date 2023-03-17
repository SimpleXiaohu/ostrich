;test regex ([0-9]{1,3}B)?([0-9]{1,3}M)?([0-9]{1,3}T)?([0-9]H)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "B"))) (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "M"))) (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "T"))) (re.opt (re.++ (re.range "0" "9") (str.to_re "H"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)