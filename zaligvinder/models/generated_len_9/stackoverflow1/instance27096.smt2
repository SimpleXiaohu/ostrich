;test regex (href|src)="([^"<]{2,}")
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "f")))) (re.++ (str.to_re "s") (re.++ (str.to_re "r") (str.to_re "c")))) (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.diff re.allchar (str.to_re "<")))) ((_ re.loop 2 2) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.diff re.allchar (str.to_re "<"))))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)