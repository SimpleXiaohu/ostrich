;test regex A{1,}M{1,}B{1,1}C{0,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (str.to_re "A")) ((_ re.loop 1 1) (str.to_re "A"))) (re.++ (re.++ (re.* (str.to_re "M")) ((_ re.loop 1 1) (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "B")) (re.++ (re.* (str.to_re "C")) ((_ re.loop 0 0) (str.to_re "C"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)