;test regex ([^i])\1{1,}|(i){4,}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.diff re.allchar (str.to_re "i")) (re.++ (re.* (_ re.reference 1)) ((_ re.loop 1 1) (_ re.reference 1)))) (re.++ (re.* (str.to_re "i")) ((_ re.loop 4 4) (str.to_re "i"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)