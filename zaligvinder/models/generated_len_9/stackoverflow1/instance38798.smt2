;test regex 'config[\''.$key.'\']$1=$2${3}'.$value.'$4;'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.union (str.to_re "\u{27}") (re.union (str.to_re "\u{27}") (re.union (str.to_re ".") (re.union (str.to_re "$") (re.union (str.to_re "k") (re.union (str.to_re "e") (re.union (str.to_re "y") (re.union (str.to_re ".") (re.union (str.to_re "\u{27}") (str.to_re "\u{27}"))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "=")))) (re.++ (str.to_re "") (str.to_re "2"))) (re.++ ((_ re.loop 3 3) (str.to_re "")) (re.++ (str.to_re "\u{27}") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "\u{27}"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "4") (re.++ (str.to_re ";") (str.to_re "\u{27}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)