;test regex "^(([a-zA-Z]:)|(\\\\{2}\\w+)\\$?)(\\\\(\\w[\\w].*))+(.jpg|.JPG|.jpeg|.JPEG)$";
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":")) (re.++ (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "\\")) (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))))) (str.to_re "\\")) (re.opt (str.to_re "")))) (re.++ (re.+ (re.++ (str.to_re "\\") (re.++ (str.to_re "\\") (re.++ (str.to_re "\\") (re.++ (str.to_re "w") (re.++ (re.union (str.to_re "\\") (str.to_re "w")) (re.* (re.diff re.allchar (str.to_re "\n"))))))))) (re.union (re.union (re.union (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "J") (re.++ (str.to_re "P") (str.to_re "G"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (str.to_re "g")))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "J") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "G")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)