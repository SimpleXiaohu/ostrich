;test regex [a-z]+[0-9]+[ab](-d){0,1}(.test.example.net)
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.range "a" "z")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.union (str.to_re "a") (str.to_re "b")) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "-") (str.to_re "d"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "t")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)