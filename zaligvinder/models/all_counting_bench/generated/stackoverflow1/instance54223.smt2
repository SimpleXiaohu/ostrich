;test regex $str =~ s/(?:^ {2})|\G {2}/x/mg;
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "") ((_ re.loop 2 2) (str.to_re " "))))))))))))) (re.++ (str.to_re "G") (re.++ ((_ re.loop 2 2) (str.to_re " ")) (re.++ (str.to_re "/") (re.++ (str.to_re "x") (re.++ (str.to_re "/") (re.++ (str.to_re "m") (re.++ (str.to_re "g") (str.to_re ";")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)