;test regex ^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ ((_ re.loop 1 1) (re.union (re.range "1" "9") (re.range "A" "Z"))) (re.++ (str.to_re "Z") ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)