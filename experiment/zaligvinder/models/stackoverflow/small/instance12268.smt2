;test regex 1?\.[0-5]\d{0,2}|1?\.60?0?
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.++ (str.to_re ".") (re.++ (re.range "0" "5") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "1")) (re.++ (str.to_re ".") (re.++ (re.opt (str.to_re "60")) (re.opt (str.to_re "0"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)