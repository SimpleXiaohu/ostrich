;test regex "[0-9A-Z /.]{3,}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (str.to_re " ") (re.union (str.to_re "/") (str.to_re ".")))))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (str.to_re " ") (re.union (str.to_re "/") (str.to_re "."))))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)