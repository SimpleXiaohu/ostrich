;test regex [a-c]+|t*|([x-z]){2}foo\1|(a|b)(t|u)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.+ (re.range "a" "c")) (re.* (str.to_re "t"))) (re.++ ((_ re.loop 2 2) (re.range "x" "z")) (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (_ re.reference 1)))))) (re.++ (re.union (str.to_re "a") (str.to_re "b")) (re.union (str.to_re "t") (str.to_re "u"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)