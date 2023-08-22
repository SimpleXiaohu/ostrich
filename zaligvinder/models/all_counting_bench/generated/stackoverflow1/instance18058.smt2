;test regex (?:ab([a-z]{3,5})c.*?){1,5}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 5) (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ ((_ re.loop 3 5) (re.range "a" "z")) (re.++ (str.to_re "c") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)