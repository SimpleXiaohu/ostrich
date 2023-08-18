;test regex [^t]{2,}abc[^t]{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "t"))) ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "t")))) (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "c") (re.++ (re.* (re.diff re.allchar (str.to_re "t"))) ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "t"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)