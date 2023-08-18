;test regex (G{2,5})([ACGT]{1,7})\1([ACGT]{1,7})\1([ACGT]{1,7})\1
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 5) (str.to_re "G")) (re.++ ((_ re.loop 1 7) (re.union (str.to_re "A") (re.union (str.to_re "C") (re.union (str.to_re "G") (str.to_re "T"))))) (re.++ (_ re.reference 1) (re.++ ((_ re.loop 1 7) (re.union (str.to_re "A") (re.union (str.to_re "C") (re.union (str.to_re "G") (str.to_re "T"))))) (re.++ (_ re.reference 1) (re.++ ((_ re.loop 1 7) (re.union (str.to_re "A") (re.union (str.to_re "C") (re.union (str.to_re "G") (str.to_re "T"))))) (_ re.reference 1)))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)