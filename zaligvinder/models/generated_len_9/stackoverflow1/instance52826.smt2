;test regex ^(?:[1-5] )?[a-z]{3,5}[0-9]{3,5} +([0-9]{4}) +\1$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.range "1" "5") (str.to_re " "))) (re.++ ((_ re.loop 3 5) (re.range "a" "z")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (_ re.reference 1)))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)