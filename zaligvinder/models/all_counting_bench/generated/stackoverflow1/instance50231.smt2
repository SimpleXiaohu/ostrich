;test regex strsplit(x,  "\\A[^_]*(?:_[^_]*){0}\\K_", perl=TRUE)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "x") (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "A") (re.++ (re.* (re.diff re.allchar (str.to_re "_"))) (re.++ ((_ re.loop 0 0) (re.++ (str.to_re "_") (re.* (re.diff re.allchar (str.to_re "_"))))) (re.++ (str.to_re "\\") (re.++ (str.to_re "K") (re.++ (str.to_re "_") (str.to_re "\u{22}"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "=") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "U") (str.to_re "E"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)