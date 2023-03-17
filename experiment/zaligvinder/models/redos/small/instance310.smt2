;test regex /nifi-api/output-ports/[a-f0-9\-]{36}/run-status
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "-") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "i") (re.++ (str.to_re "/") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 36 36) (re.union (re.range "a" "f") (re.union (re.range "0" "9") (str.to_re "-")))) (re.++ (str.to_re "/") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (str.to_re "s")))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)