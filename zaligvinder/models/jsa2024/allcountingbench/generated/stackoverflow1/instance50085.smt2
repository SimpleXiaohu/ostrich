;test regex _CHR([0-9A-F]{1,4}|[0-9]{1,5})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "_") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "R") (re.union ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 1 5) (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)