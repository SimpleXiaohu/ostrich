;test regex foo:.*(?:bar ){30,}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re ":") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.* (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re " "))))) ((_ re.loop 30 30) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re " ")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)