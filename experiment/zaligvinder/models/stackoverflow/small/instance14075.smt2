;test regex ^\d{2}(sth that requires this to be between 0 and 12)/\d{2}(sth that requires this to be between 1 and 31)?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (str.to_re "12")))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "1") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (str.to_re "31"))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)