;test regex \A[A-Za-z0-9][\w]{1,12}[A-Za-z0-9]\Z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ ((_ re.loop 1 12) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)