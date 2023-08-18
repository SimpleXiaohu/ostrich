;test regex \[{2,2}(NOTE)\]{2,2}(.*?)\[{2,2}\/\1\]{2,2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (str.to_re "[")) (re.++ (re.++ (str.to_re "N") (re.++ (str.to_re "O") (re.++ (str.to_re "T") (str.to_re "E")))) (re.++ ((_ re.loop 2 2) (str.to_re "]")) (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 2 2) (str.to_re "[")) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) ((_ re.loop 2 2) (str.to_re "]")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)