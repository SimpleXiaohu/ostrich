;test regex \\frac{1}{2} \1
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ ((_ re.loop 2 2) ((_ re.loop 1 1) (str.to_re "c"))) (re.++ (str.to_re " ") (_ re.reference 1)))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)