;test regex $foo = $foo -creplace '^[A-Z0-9]{40}',''
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (str.to_re " "))))))) (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 40 40) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{27}")))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)