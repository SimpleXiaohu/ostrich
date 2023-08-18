;test regex \A10{900}9{100}\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ ((_ re.loop 900 900) (str.to_re "10")) (re.++ ((_ re.loop 100 100) (str.to_re "9")) (str.to_re "z"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)