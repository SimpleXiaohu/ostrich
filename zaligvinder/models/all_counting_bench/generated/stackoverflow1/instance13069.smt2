;test regex ^([012]\d|3[01])-(jan|feb|ma[ry]|apr|ju[nl]|aug|sept?|oct|nov|dec)(?:-(\d{4}))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "012") (re.range "0" "9")) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "a") (str.to_re "n"))) (re.++ (str.to_re "f") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.union (str.to_re "r") (str.to_re "y"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "j") (re.++ (str.to_re "u") (re.union (str.to_re "n") (str.to_re "l"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "u") (str.to_re "g")))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.opt (str.to_re "t")))))) (re.++ (str.to_re "o") (re.++ (str.to_re "c") (str.to_re "t")))) (re.++ (str.to_re "n") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "c")))) (re.opt (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)