;test regex ([cC]opyright([A-Za-z ]?){0,}[0-9]{4}([A-Za-z ])?(-)?([A-Za-z ])?)[0-9]{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.union (str.to_re "c") (str.to_re "C")) (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (re.++ (re.* (re.opt (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " "))))) ((_ re.loop 0 0) (re.opt (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " ")))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " ")))) (re.++ (re.opt (str.to_re "-")) (re.opt (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " "))))))))))))))))) ((_ re.loop 4 4) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)