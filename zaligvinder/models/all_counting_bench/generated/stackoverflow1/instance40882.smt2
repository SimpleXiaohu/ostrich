;test regex <img src="([^"]+)" border="([0-9]{1})" alt="([^"]*?)" width="([0-9]{2,3})" height="([0-9]{3})" style="float: (right|left);" />
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\u{22}"))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.diff re.allchar (str.to_re "\u{22}"))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "f") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (str.to_re "t"))))) (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (str.to_re "t"))))) (re.++ (str.to_re ";") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (str.to_re ">")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)