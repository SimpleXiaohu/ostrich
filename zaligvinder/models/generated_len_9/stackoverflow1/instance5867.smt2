;test regex <<<[^\r\n]+[\r\n]*(.*?)[*]{5}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "<") (re.++ (str.to_re "<") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.diff re.allchar (str.to_re "\u{0a}")))) (re.++ (re.* (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 5 5) (str.to_re "*"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)