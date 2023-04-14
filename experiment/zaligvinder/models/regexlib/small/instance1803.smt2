;test regex (\.(php|html|htm|zip$|arj$|rar$|sit$|pdf$|gif$|jpg$|jpeg$|jpe$|tif$|tiff$))?
(declare-const X String)
(assert (str.in_re X (re.opt (re.++ (str.to_re ".") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "p") (re.++ (str.to_re "h") (str.to_re "p"))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "m") (str.to_re "l"))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (str.to_re "m")))) (re.++ (re.++ (str.to_re "z") (re.++ (str.to_re "i") (str.to_re "p"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "j"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "a") (str.to_re "r"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "i") (str.to_re "t"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "d") (str.to_re "f"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "g") (re.++ (str.to_re "i") (str.to_re "f"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (str.to_re "g")))) (str.to_re ""))) (re.++ (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "e"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "i") (str.to_re "f"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (str.to_re "f")))) (str.to_re "")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)