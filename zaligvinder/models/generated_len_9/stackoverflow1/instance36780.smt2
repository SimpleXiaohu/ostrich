;test regex rename 's/-\((.{3})\)-(.{3})/-$2-$1/' *.doc
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "-") (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ")") (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (str.to_re "-")))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (str.to_re "-")))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{27}") (re.++ (re.* (str.to_re " ")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "c"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)