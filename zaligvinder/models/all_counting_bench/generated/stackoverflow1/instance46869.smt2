;test regex windowLocation = /(^\/t\d+)|(^\/post\?.+(post|reply){1})|(\/privmsg\?.+(post|reply){1})/;
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "L") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.+ (re.range "0" "9"))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "?") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 1 1) (re.union (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (str.to_re "t")))) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (str.to_re "y")))))))))))))))) (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (str.to_re "m") (re.++ (str.to_re "s") (re.++ (str.to_re "g") (re.++ (str.to_re "?") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 1 1) (re.union (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (str.to_re "t")))) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (str.to_re "y"))))))))))))))))) (re.++ (str.to_re "/") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)