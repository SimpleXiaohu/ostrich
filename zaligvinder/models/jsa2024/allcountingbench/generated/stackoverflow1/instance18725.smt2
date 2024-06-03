;test regex &#(?:x0{0,2}[01]?[0-9a-fA-F]|0{0,2}(?:[012]?[0-9]|3[01]));
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (re.union (re.++ (str.to_re "x") (re.++ ((_ re.loop 0 2) (str.to_re "0")) (re.++ (re.opt (str.to_re "01")) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ ((_ re.loop 0 2) (str.to_re "0")) (re.union (re.++ (re.opt (str.to_re "012")) (re.range "0" "9")) (re.++ (str.to_re "3") (str.to_re "01"))))) (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)