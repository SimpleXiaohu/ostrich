;test regex ^((.*? )?(dog|car|house|work|cat)( |$)){3}.*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.++ (re.opt (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (str.to_re " "))) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "g"))) (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (str.to_re "e")))))) (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "k"))))) (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "t")))) (re.union (str.to_re " ") (str.to_re ""))))) (re.* (re.diff re.allchar (str.to_re "\n"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)