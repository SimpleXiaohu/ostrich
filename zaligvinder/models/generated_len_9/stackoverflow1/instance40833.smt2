;test regex ^[0-9]{1,4}([IZ][A-Z]{0,2}|[A-Z]([IZ][A-Z]?|[A-Z][IZ]))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "I") (str.to_re "Z")) ((_ re.loop 0 2) (re.range "A" "Z"))) (re.++ (re.range "A" "Z") (re.union (re.++ (re.union (str.to_re "I") (str.to_re "Z")) (re.opt (re.range "A" "Z"))) (re.++ (re.range "A" "Z") (re.union (str.to_re "I") (str.to_re "Z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)