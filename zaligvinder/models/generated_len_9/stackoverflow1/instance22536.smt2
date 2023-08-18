;test regex "^(C[OC]|EX|FR)[0-9]{4}(/{1})[0-9]{1,8}$";
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "C") (re.union (str.to_re "O") (str.to_re "C"))) (re.++ (str.to_re "E") (str.to_re "X"))) (re.++ (str.to_re "F") (str.to_re "R"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 8) (re.range "0" "9"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)