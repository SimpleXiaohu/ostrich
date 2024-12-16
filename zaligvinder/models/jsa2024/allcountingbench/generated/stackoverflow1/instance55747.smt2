;test regex 0{0,4}([1-9]\d{0,4})0?([1-9]\d{8,9})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 4) (str.to_re "0")) (re.++ (re.++ (re.range "1" "9") ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.++ (re.range "1" "9") ((_ re.loop 8 9) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)