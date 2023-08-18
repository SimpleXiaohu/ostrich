;test regex d(?:.{20000}){2}o(?:.{20000}){2}g(?:.{20000}){2}s
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "d") (re.++ ((_ re.loop 2 2) ((_ re.loop 20000 20000) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "o") (re.++ ((_ re.loop 2 2) ((_ re.loop 20000 20000) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "g") (re.++ ((_ re.loop 2 2) ((_ re.loop 20000 20000) (re.diff re.allchar (str.to_re "\n")))) (str.to_re "s")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)