;test regex ^(\d\d,\d)(?:%\(\d\) . )(\d{3,4})(?: )(bytes)(?: used from )(\d{1,3})(?:kB)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re ",") (re.range "0" "9"))) (re.++ (re.++ (str.to_re "%") (re.++ (str.to_re "(") (re.++ (re.range "0" "9") (re.++ (str.to_re ")") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re " "))))))) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "b") (re.++ (str.to_re "y") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "s"))))) (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (str.to_re " "))))))))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "k") (str.to_re "B")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)