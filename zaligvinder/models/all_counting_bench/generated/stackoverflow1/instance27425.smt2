;test regex [^a-zA-Z]avi[^a-zA-Z]{0,1}
(declare-const X String)
(assert (str.in_re X (re.++ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.diff re.allchar (re.range "A" "Z"))) (re.++ (str.to_re "a") (re.++ (str.to_re "v") (re.++ (str.to_re "i") ((_ re.loop 0 1) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.diff re.allchar (re.range "A" "Z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)