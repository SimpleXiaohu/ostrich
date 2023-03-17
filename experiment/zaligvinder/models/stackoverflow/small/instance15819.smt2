;test regex ^(?:\d{1,9}(?:[\r\n]\d{1,9})*)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.opt (re.++ ((_ re.loop 1 9) (re.range "0" "9")) (re.* (re.++ (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}")) ((_ re.loop 1 9) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)