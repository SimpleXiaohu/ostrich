;test regex ^\{isa = PBXBuildFile fileRef = [A-Z0-9]{24}\}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "{") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "P") (re.++ (str.to_re "B") (re.++ (str.to_re "X") (re.++ (str.to_re "B") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re "F") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ ((_ re.loop 24 24) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "}"))))))))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)