;test regex \\b\\w*?(\\w{2})\\w*?\\1\\w*?\\b on <b>'tatarak'</b>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "\\") (re.++ (re.*? (str.to_re "w")) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "w"))) (re.++ (str.to_re "\\") (re.++ (re.*? (str.to_re "w")) (re.++ (str.to_re "\\") (re.++ (str.to_re "1") (re.++ (str.to_re "\\") (re.++ (re.*? (str.to_re "w")) (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re ">") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "k") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (str.to_re ">")))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)