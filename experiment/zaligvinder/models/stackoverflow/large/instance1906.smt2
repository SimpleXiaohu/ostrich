;test regex $content ="<p>This is a sample text where {123456} and {7894560} ['These are samples']{145789}</p>";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "<") (re.++ (str.to_re "p") (re.++ (str.to_re ">") (re.++ (str.to_re "T") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ ((_ re.loop 123456 123456) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ ((_ re.loop 7894560 7894560) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 145789 145789) (re.union (str.to_re "\u{27}") (re.union (str.to_re "T") (re.union (str.to_re "h") (re.union (str.to_re "e") (re.union (str.to_re "s") (re.union (str.to_re "e") (re.union (str.to_re " ") (re.union (str.to_re "a") (re.union (str.to_re "r") (re.union (str.to_re "e") (re.union (str.to_re " ") (re.union (str.to_re "s") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re "l") (re.union (str.to_re "e") (re.union (str.to_re "s") (str.to_re "\u{27}")))))))))))))))))))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re ">") (re.++ (str.to_re "\u{22}") (str.to_re ";")))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)