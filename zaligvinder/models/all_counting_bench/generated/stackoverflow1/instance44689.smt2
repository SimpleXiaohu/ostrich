;test regex \[quote\]{1,}(.*?)\[\/quote\]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (re.++ (re.* (str.to_re "]")) ((_ re.loop 1 1) (str.to_re "]"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "[") (re.++ (str.to_re "/") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "]"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)