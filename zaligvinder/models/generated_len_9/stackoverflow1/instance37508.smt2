;test regex sed -r 's/(a[0-9]{6}) +/\1\n/' old > new
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "a") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (re.+ (str.to_re " ")) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "w")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)