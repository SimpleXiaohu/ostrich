;test regex ^(1\.1[0-9]{2,}|1\.2[0-9]+|1\.[3-9][0-9]*)(\.|$)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "1") (re.++ (str.to_re ".") (re.++ (str.to_re "1") (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))))) (re.++ (str.to_re "1") (re.++ (str.to_re ".") (re.++ (str.to_re "2") (re.+ (re.range "0" "9")))))) (re.++ (str.to_re "1") (re.++ (str.to_re ".") (re.++ (re.range "3" "9") (re.* (re.range "0" "9")))))) (re.union (str.to_re ".") (str.to_re ""))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)