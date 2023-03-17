;test regex 19\\d{2}|[2-9]\\d{3}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "19") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d")))) (re.++ (re.range "2" "9") (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "d")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)