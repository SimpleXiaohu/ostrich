;test regex sed 's/\([A-Z]+(_{0,1}[A-Z]+)+\)/\1/g'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "(") (re.++ (re.+ (re.range "A" "Z")) (re.++ (re.+ (re.++ ((_ re.loop 0 1) (str.to_re "_")) (re.+ (re.range "A" "Z")))) (re.++ (str.to_re ")") (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{27}"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)