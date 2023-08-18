;test regex ^[a-z]+N(?:\d{6}|(?:(?:\d{7}){1,2}\d))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "N") (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) ((_ re.loop 7 7) (re.range "0" "9"))) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)