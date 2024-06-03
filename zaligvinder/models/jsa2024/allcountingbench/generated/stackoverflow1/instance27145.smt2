;test regex \[Chorus.*?\].*?(\n{2,}|$)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (str.to_re "C") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "]") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.union (re.++ (re.* (str.to_re "\u{0a}")) ((_ re.loop 2 2) (str.to_re "\u{0a}"))) (str.to_re ""))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)