;test regex [/d]{2,} - > [\d]{2,}  actually \d{2,} would do too
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.union (str.to_re "/") (str.to_re "d"))) ((_ re.loop 2 2) (re.union (str.to_re "/") (str.to_re "d")))) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (str.to_re "o"))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)