;test regex awk '$2 == "21:15:[0-9]{2}:[0-9]{3}"'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "a") (re.++ (str.to_re "w") (re.++ (str.to_re "k") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "21") (re.++ (str.to_re ":") (re.++ (str.to_re "15") (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "\u{22}") (str.to_re "\u{27}")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)