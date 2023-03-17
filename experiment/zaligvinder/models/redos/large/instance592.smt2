;test regex \A\$[0-9a-z]{2}\$[0-9]{2}\$[A-Za-z0-9\.\/]{53}\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "$") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ (str.to_re "$") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "$") (re.++ ((_ re.loop 53 53) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (str.to_re "/")))))) (str.to_re "z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)