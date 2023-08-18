;test regex ^\(pq\){3,5}\($|[^p]|p$|p[^q]\)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "(") (re.++ (str.to_re "p") (re.++ (str.to_re "q") (re.++ ((_ re.loop 3 5) (str.to_re ")")) (str.to_re "(")))))) (str.to_re "")) (re.diff re.allchar (str.to_re "p"))) (re.++ (str.to_re "p") (str.to_re ""))) (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "q")) (str.to_re ")"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)