;test regex ^((?:\+27|27)|0)(=72|82|73|83|74|84)(\d{7})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "+") (str.to_re "27")) (str.to_re "27")) (str.to_re "0")) (re.++ (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "=") (str.to_re "72")) (str.to_re "82")) (str.to_re "73")) (str.to_re "83")) (str.to_re "74")) (str.to_re "84")) ((_ re.loop 7 7) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)