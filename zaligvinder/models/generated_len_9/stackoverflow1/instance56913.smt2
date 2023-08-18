;test regex ^(?:\d+B)?(?:\d{1,3}M)?(?:\d{1,3}T)?(?:\d{1}H)?(\.[0-9]*)?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to_re "B"))) (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "M"))) (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "T"))) (re.++ (re.opt (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "H"))) (re.opt (re.++ (str.to_re ".") (re.* (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)