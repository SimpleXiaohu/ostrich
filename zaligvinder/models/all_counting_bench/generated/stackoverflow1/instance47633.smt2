;test regex $match = '${2}.$4 ';
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))) (re.++ ((_ re.loop 2 2) (str.to_re "")) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "") (re.++ (str.to_re "4") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re ";"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)