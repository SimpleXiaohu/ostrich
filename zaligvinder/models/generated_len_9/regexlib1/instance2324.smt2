;test regex ^((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))$|^([01]\d|2[0-3])(:[0-5]\d){0,2}$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ ((_ re.loop 0 2) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "A") (str.to_re "P")) (str.to_re "M")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "01") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) ((_ re.loop 0 2) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)