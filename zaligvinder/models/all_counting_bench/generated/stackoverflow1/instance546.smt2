;test regex \.facebook\.[A-Z]{2,4}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re ".") (re.++ (str.to_re "f") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re "k") (re.++ (str.to_re ".") ((_ re.loop 2 4) (re.range "A" "Z"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)