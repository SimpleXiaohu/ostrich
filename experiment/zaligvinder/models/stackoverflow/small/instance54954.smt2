;test regex ^1?\d{3}(?:[a-z]{7}|[\d]{7})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "1")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union ((_ re.loop 7 7) (re.range "a" "z")) ((_ re.loop 7 7) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)