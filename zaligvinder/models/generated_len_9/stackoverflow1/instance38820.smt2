;test regex (\d{16})(\d+)(.*?\.pdf)  ->  \2\1\3
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 16 16) (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (str.to_re "f"))))) (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (_ re.reference 2) (re.++ (_ re.reference 1) (_ re.reference 3))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)