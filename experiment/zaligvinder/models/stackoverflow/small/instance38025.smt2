;test regex RewriteRule ^.+\:\/\/?([a-zA-Z0-9]+)\.{1}.+\.{1}.+\/?([a-zA-Z0-9]*)?\/?([a-zA-Z0-9]*)?\/?([a-zA-Z0-9]*)?$ /app.php?var1='$1'&var2='$2'&var3='$3'&var4='$4'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (re.opt (str.to_re "/")) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "/")) (re.opt (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (re.opt (str.to_re "p")) (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "1") (re.++ (str.to_re "=") (str.to_re "\u{27}"))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "&") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "2") (re.++ (str.to_re "=") (str.to_re "\u{27}"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "&") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "3") (re.++ (str.to_re "=") (str.to_re "\u{27}"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "&") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "4") (re.++ (str.to_re "=") (str.to_re "\u{27}"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "4") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)