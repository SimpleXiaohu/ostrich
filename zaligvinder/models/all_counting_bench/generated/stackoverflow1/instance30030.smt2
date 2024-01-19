;test regex data-parsley-pattern="[1-5ilIL][a-km-np-zA-KM-NP-Z]{5}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.range "1" "5") (re.union (str.to_re "i") (re.union (str.to_re "l") (re.union (str.to_re "I") (str.to_re "L"))))) (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "k") (re.union (re.range "m" "n") (re.union (re.range "p" "z") (re.union (re.range "A" "K") (re.union (re.range "M" "N") (re.range "P" "Z"))))))) (str.to_re "\u{22}")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)