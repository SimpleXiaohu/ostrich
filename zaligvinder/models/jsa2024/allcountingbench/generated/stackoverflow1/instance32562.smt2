;test regex [AB].A{2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "B")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 2) (str.to_re "A"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)