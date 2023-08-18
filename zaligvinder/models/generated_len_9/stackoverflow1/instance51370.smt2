;test regex NOT REGEXP_LIKE(MOBILE_NO,'(.)\1{9,}')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "N") (re.++ (str.to_re "O") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "K") (re.++ (str.to_re "E") (re.++ (re.++ (str.to_re "M") (re.++ (str.to_re "O") (re.++ (str.to_re "B") (re.++ (str.to_re "I") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ (str.to_re "N") (str.to_re "O"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.++ (re.* (_ re.reference 1)) ((_ re.loop 9 9) (_ re.reference 1))) (str.to_re "\u{27}")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)