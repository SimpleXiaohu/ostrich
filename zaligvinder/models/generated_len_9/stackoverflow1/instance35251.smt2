;test regex /(Q\.\d+.*?)(?:(?:<br \/>|\n){3}|$)/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "Q") (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.*? (re.diff re.allchar (str.to_re "\n")))))) (re.++ (re.union ((_ re.loop 3 3) (re.union (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (str.to_re ">")))))) (str.to_re "\u{0a}"))) (str.to_re "")) (str.to_re "/"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)