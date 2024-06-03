;test regex (?:[ .](\d{3}\d?p)|\Z)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re " ") (str.to_re ".")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.range "0" "9")) (str.to_re "p")))) (str.to_re "Z"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)