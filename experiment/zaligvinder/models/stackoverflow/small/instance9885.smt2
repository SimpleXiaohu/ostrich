;test regex sed -E 's/(([^|]*\|){3})//5' infile
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "5") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)