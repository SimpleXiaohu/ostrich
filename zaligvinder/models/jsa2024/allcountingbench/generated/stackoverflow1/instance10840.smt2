;test regex (\W{3,4}StartPageAvatar char="[ktuel]{1,4}"\W{2}).<h3>(\W{3,4}m.a.{1,2})Intro\W{2}<\/h3>.\W{3,4}duration.\W{2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 3 4) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "A") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 1 4) (re.union (str.to_re "k") (re.union (str.to_re "t") (re.union (str.to_re "u") (re.union (str.to_re "e") (str.to_re "l")))))) (re.++ (str.to_re "\u{22}") ((_ re.loop 2 2) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))))))))))))))))))))))))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "<") (re.++ (str.to_re "h") (re.++ (str.to_re "3") (re.++ (str.to_re ">") (re.++ (re.++ ((_ re.loop 3 4) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "a") ((_ re.loop 1 2) (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (str.to_re "I") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ ((_ re.loop 2 2) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "h") (re.++ (str.to_re "3") (re.++ (str.to_re ">") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 3 4) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 2) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)