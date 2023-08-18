;test regex \\([A-Z0-9]{22}K\.TIF)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 22 22) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (str.to_re "K") (re.++ (str.to_re ".") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (str.to_re "F"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)