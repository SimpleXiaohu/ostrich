;test regex img_regex = /^ftp|http|https?:\/\/(?:[a-z\-]+\.)+[a-z]{2,6}(?:\/[^\/#?]+)+\.(?:jpe?g|gif|png)$/ig
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "g") (re.++ (str.to_re "_") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "/"))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p"))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p"))))) (re.++ (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "-"))) (str.to_re "."))) (re.++ ((_ re.loop 2 6) (re.range "a" "z")) (re.++ (re.+ (re.++ (str.to_re "/") (re.+ (re.inter (re.diff re.allchar (str.to_re "/")) (re.inter (re.diff re.allchar (str.to_re "#")) (re.diff re.allchar (str.to_re "?"))))))) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "e")) (str.to_re "g")))) (re.++ (str.to_re "g") (re.++ (str.to_re "i") (str.to_re "f")))) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "g")))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (str.to_re "g"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)