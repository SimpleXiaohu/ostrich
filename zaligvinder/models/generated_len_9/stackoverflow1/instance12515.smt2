;test regex $text =~ s/\w{1,2}$//g;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re ";"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)