;test regex ^\d?[a-z]{1,2}\d{1,4}[a-z]{1,3}(?:-\d+|/[a-z]+)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "a" "z")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "a" "z")) (re.opt (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "/") (re.+ (re.range "a" "z")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)