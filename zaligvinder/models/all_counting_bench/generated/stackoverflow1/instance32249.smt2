;test regex ^/courses(/[a-z0-9\-]+){2,3}(/|\.jsp)?(\?.*)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ ((_ re.loop 2 3) (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))))) (re.++ (re.opt (re.union (str.to_re "/") (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "s") (str.to_re "p")))))) (re.opt (re.++ (str.to_re "?") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)