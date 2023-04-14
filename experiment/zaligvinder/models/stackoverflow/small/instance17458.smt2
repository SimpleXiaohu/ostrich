;test regex ^(?:(?:\d{0,3}[a-z]{1,3}\d{1,3})+|(?:[a-z]{0,3}\d{1,3}[a-z]{1,3})+)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.+ (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "a" "z")) ((_ re.loop 1 3) (re.range "0" "9"))))) (re.+ (re.++ ((_ re.loop 0 3) (re.range "a" "z")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 1 3) (re.range "a" "z"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)