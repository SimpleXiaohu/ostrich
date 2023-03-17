;test regex ^[+]?(\d{2,4}-)?(\d{7,11})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "+")) (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 7 11) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)