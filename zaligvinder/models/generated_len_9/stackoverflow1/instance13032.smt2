;test regex (b.*){2}a.*a
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.++ (str.to_re "b") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "a") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "a"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)