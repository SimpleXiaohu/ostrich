;test regex ^\$6\$(rounds=[0-9]+\$)?[a-z0-9\/.]{0,16}\$[a-z0-9\/.]{86}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "$") (re.++ (str.to_re "6") (re.++ (str.to_re "$") (re.++ (re.opt (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "s") (re.++ (str.to_re "=") (re.++ (re.+ (re.range "0" "9")) (str.to_re "$")))))))))) (re.++ ((_ re.loop 0 16) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (str.to_re "."))))) (re.++ (str.to_re "$") ((_ re.loop 86 86) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (str.to_re ".")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)