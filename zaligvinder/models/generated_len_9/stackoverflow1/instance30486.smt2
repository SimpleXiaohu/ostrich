;test regex (\/company\/ttext\/)((\d{9,10}\/?)+)((\D\/?)*)((\w?\d{9,14}\/?)*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "y") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (str.to_re "/"))))))))))))))) (re.++ (re.+ (re.++ ((_ re.loop 9 10) (re.range "0" "9")) (re.opt (str.to_re "/")))) (re.++ (re.* (re.++ (re.diff re.allchar (re.range "0" "9")) (re.opt (str.to_re "/")))) (re.* (re.++ (re.opt (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ ((_ re.loop 9 14) (re.range "0" "9")) (re.opt (str.to_re "/"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)