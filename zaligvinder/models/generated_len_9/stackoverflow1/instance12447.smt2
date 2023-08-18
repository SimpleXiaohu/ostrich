;test regex [AZaz09]{3,8}\-[AZaz09]{3,8}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 8) (re.union (str.to_re "A") (re.union (str.to_re "Z") (re.union (str.to_re "a") (re.union (str.to_re "z") (str.to_re "09")))))) (re.++ (str.to_re "-") ((_ re.loop 3 8) (re.union (str.to_re "A") (re.union (str.to_re "Z") (re.union (str.to_re "a") (re.union (str.to_re "z") (str.to_re "09"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)