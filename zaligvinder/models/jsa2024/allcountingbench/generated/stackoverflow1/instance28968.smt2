;test regex ^(a{1,3}[^a]|[^a])*a{0,3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (re.++ ((_ re.loop 1 3) (str.to_re "a")) (re.diff re.allchar (str.to_re "a"))) (re.diff re.allchar (str.to_re "a")))) ((_ re.loop 0 3) (str.to_re "a")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)