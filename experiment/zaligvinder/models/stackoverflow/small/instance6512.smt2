;test regex /^([12]\d|3[01])/(Jan(uary)?|Feb(ruary)?|Mar(ch)?|Apr(il)?|May|June?|July?|Aug(ust)?|Sep(t(ember)?)?|Oct(ober)?|Nov(ember)?|Dec(ember)?)/\d{4}$/i
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "12") (re.range "0" "9")) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re "/") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.opt (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y")))))))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.opt (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y")))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.opt (re.++ (str.to_re "c") (str.to_re "h"))))))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.opt (re.++ (str.to_re "i") (str.to_re "l"))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.opt (str.to_re "e")))))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.opt (str.to_re "y")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.opt (re.++ (str.to_re "u") (re.++ (str.to_re "s") (str.to_re "t")))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.opt (re.++ (str.to_re "t") (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.opt (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))) (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "i"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)