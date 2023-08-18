;test regex '/kb/[^/]*-\d{5}\.html'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re "k") (re.++ (str.to_re "b") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "/"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "m") (re.++ (str.to_re "l") (str.to_re "\u{27}"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)