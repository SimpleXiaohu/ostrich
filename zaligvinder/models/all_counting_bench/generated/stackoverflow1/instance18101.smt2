;test regex ^(?:.*\.(?:cab|dll|exe)){2,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "b"))) (re.++ (str.to_re "d") (re.++ (str.to_re "l") (str.to_re "l")))) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "e"))))))) ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "b"))) (re.++ (str.to_re "d") (re.++ (str.to_re "l") (str.to_re "l")))) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "e"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)