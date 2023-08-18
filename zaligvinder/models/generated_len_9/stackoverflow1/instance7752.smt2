;test regex ls -l | sed -r 's/^.[-rwx]{9} //'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "l") (str.to_re " ")))))) (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/"))))))))))) (re.++ (str.to_re "") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 9 9) (re.union (str.to_re "-") (re.union (str.to_re "r") (re.union (str.to_re "w") (str.to_re "x"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (str.to_re "\u{27}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)