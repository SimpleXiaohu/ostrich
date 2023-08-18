;test regex '(?:\d{2}\.\d).*(?:Non-payment)'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.range "0" "9"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "t"))))))))))) (str.to_re "\u{27}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)