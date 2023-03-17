;test regex (^|[^@\\w])@(\\w{1,15})\\b
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.inter (re.diff re.allchar (str.to_re "@")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "w"))))) (re.++ (str.to_re "@") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 1 15) (str.to_re "w"))) (re.++ (str.to_re "\\") (str.to_re "b")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)