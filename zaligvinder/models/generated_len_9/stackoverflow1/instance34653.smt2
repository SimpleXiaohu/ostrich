;test regex ^[0-9]{5,6}@(student|teacher)\.de$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 5 6) (re.range "0" "9")) (re.++ (str.to_re "@") (re.++ (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "t"))))))) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (str.to_re "r")))))))) (re.++ (str.to_re ".") (re.++ (str.to_re "d") (str.to_re "e"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)