;test regex \$json.{2}VALID
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "$") (re.++ (str.to_re "j") (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "V") (re.++ (str.to_re "A") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (str.to_re "D")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)