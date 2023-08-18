;test regex (\d)d?(\d{2})h?(\d{2})m?
(declare-const X String)
(assert (str.in_re X (re.++ (re.range "0" "9") (re.++ (re.opt (str.to_re "d")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "h")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "m")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)