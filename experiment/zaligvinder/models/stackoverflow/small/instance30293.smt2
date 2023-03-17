;test regex [A-Z0-9]{5,24}[_]{0,1}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 5 24) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 1) (str.to_re "_")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)