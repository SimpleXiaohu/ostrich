;test regex ap{0,}le
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "a") (re.++ (re.++ (re.* (str.to_re "p")) ((_ re.loop 0 0) (str.to_re "p"))) (re.++ (str.to_re "l") (str.to_re "e"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)