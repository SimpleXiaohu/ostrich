;test regex \$?GP[a-z]{3,},([a-z0-9\.]*,)+([a-z0-9]{1,2}\*[a-z0-9]{1,2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.opt (str.to_re "$")) (re.++ (str.to_re "G") (re.++ (str.to_re "P") (re.++ (re.* (re.range "a" "z")) ((_ re.loop 3 3) (re.range "a" "z")))))) (re.++ (str.to_re ",") (re.++ (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re ".")))) (str.to_re ","))) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "*") ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)