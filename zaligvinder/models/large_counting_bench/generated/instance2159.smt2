;test regex ^([c]:\\)\\?(temp)([^(\.\.)]){0,200}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re ":") (str.to_re "\\"))) (re.++ (re.opt (str.to_re "\\")) (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (str.to_re "p")))) ((_ re.loop 0 200) (re.inter (re.diff re.allchar (str.to_re "(")) (re.inter (re.diff re.allchar (str.to_re ".")) (re.inter (re.diff re.allchar (str.to_re ".")) (re.diff re.allchar (str.to_re ")")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)