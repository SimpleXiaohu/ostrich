;test regex <input class="form-control" [a-z]{1,99}="[a-z]{1,30}" .[a-z="0]{1,20} name="([a-z_]{1,50})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 99) (re.range "a" "z")) (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 1 30) (re.range "a" "z")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.union (str.to_re "=") (re.union (str.to_re "\u{22}") (str.to_re "0"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 1 50) (re.union (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)