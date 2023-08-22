;test regex "(\e\[(\d{1,2};)*?[mz]?)?"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "[") (re.++ (re.* (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ";"))) (re.opt (re.union (str.to_re "m") (str.to_re "z"))))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)