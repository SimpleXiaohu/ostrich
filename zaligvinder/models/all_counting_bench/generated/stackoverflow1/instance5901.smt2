;test regex \[(?:fi(?:x|nish)ed ?|complete ?)?#\K\d{1,16}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (re.opt (re.union (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (re.union (str.to_re "x") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (str.to_re "h"))))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.opt (str.to_re " "))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.opt (str.to_re " ")))))))))))) (re.++ (str.to_re "#") (re.++ (str.to_re "K") ((_ re.loop 1 16) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)