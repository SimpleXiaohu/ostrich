;test regex ^(([A-Z]\d)|([A-Z]\d{2})|([A-Z]{2}\d)|([A-Z]{2}\d{2})|([A-Z]\d[A-Z])|([A-Z]{2}\d[A-Z])|(GIR))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.range "A" "Z") (re.++ (re.range "0" "9") (re.range "A" "Z")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "G") (re.++ (str.to_re "I") (str.to_re "R"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)