;test regex (Mr|Mdm|Madam|Ms|Miss|Dr\.?)\s+([A-Z][a-z]+\s){1,4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "M") (str.to_re "r")) (re.++ (str.to_re "M") (re.++ (str.to_re "d") (str.to_re "m")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (str.to_re "m")))))) (re.++ (str.to_re "M") (str.to_re "s"))) (re.++ (str.to_re "M") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (str.to_re "s"))))) (re.++ (str.to_re "D") (re.++ (str.to_re "r") (re.opt (str.to_re "."))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 4) (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)