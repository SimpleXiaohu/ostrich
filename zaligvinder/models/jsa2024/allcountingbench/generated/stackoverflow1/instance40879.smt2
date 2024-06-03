;test regex [^X]{2} ((XX ){3}|(XX ){5})[^X]{2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "X"))) (re.++ (str.to_re " ") (re.++ (re.union ((_ re.loop 3 3) (re.++ (str.to_re "X") (re.++ (str.to_re "X") (str.to_re " ")))) ((_ re.loop 5 5) (re.++ (str.to_re "X") (re.++ (str.to_re "X") (str.to_re " "))))) ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "X"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)