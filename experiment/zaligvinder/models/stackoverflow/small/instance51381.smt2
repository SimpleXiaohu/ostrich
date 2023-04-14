;test regex (^[A-Z]{0,10}$\r?\n?){0,3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 0 3) (re.++ (re.++ (str.to_re "") ((_ re.loop 0 10) (re.range "A" "Z"))) (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "\u{0d}")) (re.opt (str.to_re "\u{0a}"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)