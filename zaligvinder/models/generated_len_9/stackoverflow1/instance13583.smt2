;test regex ^2F.*22(.*?)011F(.*?)(0126.*?)?.{2}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "F") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "22") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "011") (re.++ (str.to_re "F") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.++ (str.to_re "0126") (re.*? (re.diff re.allchar (str.to_re "\n"))))) ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "\n"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)