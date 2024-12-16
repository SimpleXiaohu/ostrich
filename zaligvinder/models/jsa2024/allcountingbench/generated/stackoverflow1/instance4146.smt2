;test regex ^(\d{2,11})((?:af?|a?f).+)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 11) (re.range "0" "9")) (re.++ (re.union (re.++ (str.to_re "a") (re.opt (str.to_re "f"))) (re.++ (re.opt (str.to_re "a")) (str.to_re "f"))) (re.+ (re.diff re.allchar (str.to_re "\n")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)