;test regex Design +(?:No\.? +)?([A-Za-z0-9]{12})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "n") (re.++ (re.+ (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (re.opt (str.to_re ".")) (re.+ (str.to_re " ")))))) ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)