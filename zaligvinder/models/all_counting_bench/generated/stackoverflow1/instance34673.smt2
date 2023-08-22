;test regex h{1,2}i{1,2}k{1,2}e{1,2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (str.to_re "h")) (re.++ ((_ re.loop 1 2) (str.to_re "i")) (re.++ ((_ re.loop 1 2) (str.to_re "k")) ((_ re.loop 1 2) (str.to_re "e")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)