;test regex regexp_substr('hfhweffkjnaaaaagpeg','([a-zA-z])\1{4,10}')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "h") (re.++ (str.to_re "f") (re.++ (str.to_re "h") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "k") (re.++ (str.to_re "j") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (str.to_re "\u{27}"))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (re.union (re.range "a" "z") (re.range "A" "z")) (re.++ ((_ re.loop 4 10) (_ re.reference 1)) (str.to_re "\u{27}")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)