;test regex (_a ){64999}_a
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 64999 64999) (re.++ (str.to_re "_") (re.++ (str.to_re "a") (str.to_re " ")))) (re.++ (str.to_re "_") (str.to_re "a")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)