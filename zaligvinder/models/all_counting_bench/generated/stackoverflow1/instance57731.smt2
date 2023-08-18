;test regex grep [:alpha:]{4} words
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.union (str.to_re ":") (re.union (str.to_re "a") (re.union (str.to_re "l") (re.union (str.to_re "p") (re.union (str.to_re "h") (re.union (str.to_re "a") (str.to_re ":")))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (str.to_re "s"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)