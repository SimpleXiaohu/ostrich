;test regex sed 's/^[0-9]{0,13}\u{00}//g'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/"))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 0 13) (re.range "0" "9")) (re.++ (str.to_re "\u{00}") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{27}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)