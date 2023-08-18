;test regex ^([a-z]{3,4}[0-9]{1}|[a-z]{3,4}[0-9]{1}[,]{1})*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.* (re.union (re.++ ((_ re.loop 3 4) (re.range "a" "z")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ","))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)