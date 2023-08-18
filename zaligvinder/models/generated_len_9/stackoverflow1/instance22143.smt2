;test regex sed -r 's/(;[0-9]{1,})\.([0-9]{4})/\1,\2/g' file
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re ";") (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "/") (_ re.reference 1))))))))))))))) (re.++ (str.to_re ",") (re.++ (_ re.reference 2) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)