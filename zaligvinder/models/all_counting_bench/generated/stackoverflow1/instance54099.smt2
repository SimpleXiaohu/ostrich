;test regex ^Lyra(\\w{3,6})(\\d{8})\\.png$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "L") (re.++ (str.to_re "y") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 3 6) (str.to_re "w"))) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 8 8) (str.to_re "d"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "g")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)