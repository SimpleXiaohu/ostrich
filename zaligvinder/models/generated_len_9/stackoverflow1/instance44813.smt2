;test regex (((\d)\3{1,})\d+(?:(?:\n|$)\2\d+)*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.range "0" "9") (re.++ (re.* (_ re.reference 3)) ((_ re.loop 1 1) (_ re.reference 3)))) (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to_re "\u{0a}") (str.to_re "")) (re.++ (_ re.reference 2) (re.+ (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)