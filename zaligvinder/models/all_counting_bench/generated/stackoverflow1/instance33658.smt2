;test regex Weight(:( )?)(\d{1,2} lbs|pounds|ounces|kilos)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "W") (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re ":") (re.opt (str.to_re " "))) (re.union (re.union (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "b") (str.to_re "s"))))) (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (str.to_re "s"))))))) (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (str.to_re "s"))))))) (re.++ (str.to_re "k") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (str.to_re "s")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)