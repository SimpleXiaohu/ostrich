;test regex $delta_Value[$j] =~ s/(^.{12}).*$/$1/;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "_") (re.++ (str.to_re "V") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (re.union (str.to_re "$") (str.to_re "j")) (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "") ((_ re.loop 12 12) (re.diff re.allchar (str.to_re "\n")))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "/"))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "/") (str.to_re ";")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)