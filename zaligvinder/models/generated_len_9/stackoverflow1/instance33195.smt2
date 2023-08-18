;test regex \.(pdf|jpe{0,1}g|asp|docx{0,1}|xlsx{0,1}|cfm)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re ".") (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "p") (re.++ (str.to_re "d") (str.to_re "f"))) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ ((_ re.loop 0 1) (str.to_re "e")) (str.to_re "g"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "p")))) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "c") ((_ re.loop 0 1) (str.to_re "x")))))) (re.++ (str.to_re "x") (re.++ (str.to_re "l") (re.++ (str.to_re "s") ((_ re.loop 0 1) (str.to_re "x")))))) (re.++ (str.to_re "c") (re.++ (str.to_re "f") (str.to_re "m"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)