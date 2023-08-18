;test regex @(?:[a-z]{2})?(lookbook)/?(\d*)(?:\.html)?@
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "@") (re.++ (re.opt ((_ re.loop 2 2) (re.range "a" "z"))) (re.++ (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re "k") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "k")))))))) (re.++ (re.opt (str.to_re "/")) (re.++ (re.* (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "m") (str.to_re "l")))))) (str.to_re "@")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)