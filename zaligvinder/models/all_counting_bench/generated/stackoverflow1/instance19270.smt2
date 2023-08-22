;test regex D.{7}010
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "D") (re.++ ((_ re.loop 7 7) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "010")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)