;test regex NSString *myRegex = @"^[A-Z]\\d(2)-\\d{6}$";
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "N") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "@") (str.to_re "\u{22}"))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (re.range "A" "Z") (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re "2") (re.++ (str.to_re "-") (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)