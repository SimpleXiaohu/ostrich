;test regex ^(?:0024|24|0)(?:(?:232|123)\d{10}|3434(?:\d{9}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (str.to_re "0024") (str.to_re "24")) (str.to_re "0")) (re.union (re.++ (re.union (str.to_re "232") (str.to_re "123")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "3434") ((_ re.loop 9 9) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)