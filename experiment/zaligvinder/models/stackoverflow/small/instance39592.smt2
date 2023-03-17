;test regex .*\n.*\nLast annotated on \w* \d{2}, \d{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re " ") ((_ re.loop 2 2) (re.range "0" "9")))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)