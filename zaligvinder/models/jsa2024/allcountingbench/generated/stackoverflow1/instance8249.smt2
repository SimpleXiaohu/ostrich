;test regex ([A-Z]{2,4})([0-9]{4,})([0-9A-Z]{1,2})?
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 4) (re.range "A" "Z")) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)