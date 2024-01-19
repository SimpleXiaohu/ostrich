;test regex $ sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{1b}") (re.++ (str.to_re "[") (re.++ (re.opt (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ";") ((_ re.loop 1 2) (re.range "0" "9")))))) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "|") (str.to_re "K"))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{22}"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)