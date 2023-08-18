;test regex (^On|^at)([A-Z][a-z]{3,15}$|[A-Z][a-z]{3,15}\s{0,1}[A-Z][a-z]{0,5})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "") (re.++ (str.to_re "O") (str.to_re "n"))) (re.++ (str.to_re "") (re.++ (str.to_re "a") (str.to_re "t")))) (re.union (re.++ (re.++ (re.range "A" "Z") ((_ re.loop 3 15) (re.range "a" "z"))) (str.to_re "")) (re.++ (re.range "A" "Z") (re.++ ((_ re.loop 3 15) (re.range "a" "z")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.range "A" "Z") ((_ re.loop 0 5) (re.range "a" "z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)