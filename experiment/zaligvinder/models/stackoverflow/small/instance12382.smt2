;test regex ^[a-z]{1,6}_?\d{0,4}@[a-z0-9.-]+\.[a-z]{2,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 6) (re.range "a" "z")) (re.++ (re.opt (str.to_re "_")) (re.++ ((_ re.loop 0 4) (re.range "0" "9")) (re.++ (str.to_re "@") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (str.to_re "-"))))) (re.++ (str.to_re ".") (re.++ (re.* (re.range "a" "z")) ((_ re.loop 2 2) (re.range "a" "z")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)