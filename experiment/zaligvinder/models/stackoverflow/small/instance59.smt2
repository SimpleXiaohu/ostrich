;test regex perl -lpe 's/\D//g; s/(\d{3})(\d{3})(\d{4})/($1)$2-$3/' file
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "l") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.diff re.allchar (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (str.to_re "") (str.to_re "1"))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (str.to_re "-")))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)