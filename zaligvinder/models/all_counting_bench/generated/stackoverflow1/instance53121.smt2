;test regex \.\.{0}(.+)\?versionId
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re ".") (re.++ ((_ re.loop 0 0) (str.to_re ".")) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "?") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "I") (str.to_re "d")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)