;test regex /(http:\/\/bla\/bla\/bla\/)([:alnum:]-)\/([:num:]{5})/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "/"))))))))))))))))))) (re.++ (re.++ (re.union (str.to_re ":") (re.union (str.to_re "a") (re.union (str.to_re "l") (re.union (str.to_re "n") (re.union (str.to_re "u") (re.union (str.to_re "m") (str.to_re ":"))))))) (str.to_re "-")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 5 5) (re.union (str.to_re ":") (re.union (str.to_re "n") (re.union (str.to_re "u") (re.union (str.to_re "m") (str.to_re ":")))))) (str.to_re "/"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)