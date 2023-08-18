;test regex .+NP_len_\d{1,3}.fa
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "N") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "_") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "f") (str.to_re "a"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)