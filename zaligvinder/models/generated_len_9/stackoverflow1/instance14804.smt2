;test regex std::regex("(http|https)://(\\w+.)(\\w)/([\\w\\d]+/{0,1})+")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (str.to_re "s")))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "w")) (re.diff re.allchar (str.to_re "\n")))) (re.++ (re.++ (str.to_re "\\") (str.to_re "w")) (re.++ (str.to_re "/") (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re "\\") (re.union (str.to_re "w") (re.union (str.to_re "\\") (str.to_re "d"))))) ((_ re.loop 0 1) (str.to_re "/")))) (str.to_re "\u{22}"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)