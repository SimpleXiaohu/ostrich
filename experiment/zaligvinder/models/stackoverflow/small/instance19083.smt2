;test regex /blog.aspx[?]Year=([0-9]{4})([&amp;]?)(Month=)?([0-9]*)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "x") (re.++ (str.to_re "?") (re.++ (str.to_re "Y") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "=") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (str.to_re ";")))))) (re.++ (re.opt (re.++ (str.to_re "M") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (str.to_re "="))))))) (re.* (re.range "0" "9")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)