;test regex !^(https?://)?([\w-]+\.)?domain(\.[a-z]{2,5})+(/|#|$)!i
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "!") (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))))) (re.++ (re.opt (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (str.to_re "."))) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 5) (re.range "a" "z")))) (re.++ (re.union (re.union (str.to_re "/") (str.to_re "#")) (str.to_re "")) (re.++ (str.to_re "!") (str.to_re "i"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)