;test regex $file =~ s/(?:\G|^)[ ]{2}/\t/mg;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.union (str.to_re "G") (str.to_re "")) (re.++ ((_ re.loop 2 2) (str.to_re " ")) (re.++ (str.to_re "/") (re.++ (str.to_re "\u{09}") (re.++ (str.to_re "/") (re.++ (str.to_re "m") (re.++ (str.to_re "g") (str.to_re ";")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)