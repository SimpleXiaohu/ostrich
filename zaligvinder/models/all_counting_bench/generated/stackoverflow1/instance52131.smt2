;test regex ^c[a-z\d]{2}([1-6][a-z]\d{2}e|school|master|ee01)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "c") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (re.union (re.union (re.++ (re.range "1" "6") (re.++ (re.range "a" "z") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "e")))) (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "l"))))))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "01"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)