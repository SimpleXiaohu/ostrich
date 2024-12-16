;test regex \A(?:[-]{50}|Content-Type:[ ]*message/rfc822)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.union ((_ re.loop 50 50) (str.to_re "-")) (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "-") (re.++ (str.to_re "T") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "/") (re.++ (str.to_re "r") (re.++ (str.to_re "f") (re.++ (str.to_re "c") (str.to_re "822"))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)