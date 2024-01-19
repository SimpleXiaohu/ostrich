;test regex ^([A-Za-z]{3,6})&home$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (str.to_re "&") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (str.to_re "e"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)