;test regex (hyundai){0,1}\s*(E&C){0,1}\s*(hillstate){0,1}.*(Heungkuk){0,1}.*(invalid){0,1}.*`
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "h") (re.++ (str.to_re "y") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (str.to_re "i")))))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "E") (re.++ (str.to_re "&") (str.to_re "C")))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "e")))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "H") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "k") (re.++ (str.to_re "u") (str.to_re "k"))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (str.to_re "d")))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "`")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)