;test regex ^"customer:\d{5},item:store\/\D*"=\(\d*,\d*\);
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "c") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re ":") ((_ re.loop 5 5) (re.range "0" "9"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re ":") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "=") (re.++ (str.to_re "(") (re.* (re.range "0" "9"))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ")") (str.to_re ";")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)