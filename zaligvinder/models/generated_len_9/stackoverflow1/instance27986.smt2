;test regex s/_20[0-9]{10}// for @todayFiles;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "_") (re.++ (str.to_re "20") (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "@") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "F") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re ";"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)