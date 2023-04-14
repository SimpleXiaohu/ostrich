;test regex (v[0-9]{1,2}\.[0-9]{1,2}\.[0-9]{1,2})(-[0-9]{1,2})?((-schema)?(-dev)?)((-schema)?(-dev)?)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "v") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))))) (re.++ (re.opt (re.++ (str.to_re "-") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (re.++ (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (str.to_re "a")))))))) (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "v")))))) (re.++ (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (str.to_re "a")))))))) (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "v")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)