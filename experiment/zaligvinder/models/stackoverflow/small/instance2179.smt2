;test regex str_replace('X.4.89294e-0','X/.{0,1}','')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "X") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "4") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "89294") (re.++ (str.to_re "e") (re.++ (str.to_re "-") (re.++ (str.to_re "0") (str.to_re "\u{27}")))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "X") (re.++ (str.to_re "/") (re.++ ((_ re.loop 0 1) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{27}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)