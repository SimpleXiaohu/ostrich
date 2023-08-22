;test regex ([0-4]{1}[0-9]{0,1}[.]{0,1}[0-9]{0,2}|50)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (str.to_re "50"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)