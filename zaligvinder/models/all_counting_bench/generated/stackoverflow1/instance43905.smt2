;test regex (\\w+)(\\s{1})is not (\\w+)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 1 1) (str.to_re "s"))) (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)