;test regex ^[0-9]{7,10}_(LM|LI|AQ)_[A-Za-z]+$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 7 10) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.union (re.union (re.++ (str.to_re "L") (str.to_re "M")) (re.++ (str.to_re "L") (str.to_re "I"))) (re.++ (str.to_re "A") (str.to_re "Q"))) (re.++ (str.to_re "_") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)