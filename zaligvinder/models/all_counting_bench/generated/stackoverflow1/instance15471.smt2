;test regex (ME|TR|[0-9]{2})[0-9]{7}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re "M") (str.to_re "E")) (re.++ (str.to_re "T") (str.to_re "R"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 7 7) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)