;test regex ^(.*)(?:ASPSESSIONID[a-zA-Z]{8}=[a-zA-Z]{24})(?:&(.*))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re "P") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "I") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "A" "Z"))))))))))))))))) (re.opt (re.++ (str.to_re "&") (re.* (re.diff re.allchar (str.to_re "\n")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)