;test regex (^|[^\.0-9])(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])($|[^\.0-9])
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.inter (re.diff re.allchar (str.to_re ".")) (re.diff re.allchar (re.range "0" "9")))) (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "."))) (re.++ (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.union (str.to_re "") (re.inter (re.diff re.allchar (str.to_re ".")) (re.diff re.allchar (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)