;test regex ver=$(echo $zip| sed -E 's/.*([0-9]\.[0-9]{1,2}\.[0-9]{1,2}).*/\1/')
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re "=")))) (re.++ (str.to_re "") (re.union (re.++ (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (str.to_re " "))))) (re.++ (str.to_re "") (re.++ (str.to_re "z") (re.++ (str.to_re "i") (str.to_re "p"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re "/") (str.to_re "\u{27}")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)