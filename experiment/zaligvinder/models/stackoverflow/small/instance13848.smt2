;test regex (^\d{9}[A-Z][A-Z\d]{2}$)|(^[A-Z]{3}\d{6}$)|(^[A-Z]{3}\d{9}$)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 9 9) (re.range "0" "9")))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)