;test regex pattern="w{3}\.[a-z]+\.?[a-z]{2,3}(|\.[a-z]{2,3})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "a" "z")) (re.++ (re.opt (str.to_re ".")) (re.++ ((_ re.loop 2 3) (re.range "a" "z")) (re.++ (re.union (str.to_re "") (re.++ (str.to_re "") (re.++ (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z"))))) (str.to_re "\u{22}"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)