;test regex ^mark_1(4\d{4})|(50{4})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "k") (re.++ (str.to_re "_") (re.++ (str.to_re "1") (re.++ (str.to_re "4") ((_ re.loop 4 4) (re.range "0" "9")))))))))) ((_ re.loop 4 4) (str.to_re "50")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)