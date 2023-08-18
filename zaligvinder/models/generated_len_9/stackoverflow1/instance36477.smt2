;test regex (?:([XY]{3}_[0-3]_[XY]{3}) ([XY]{3}_[0-3]_[XY]{3}))
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 3 3) (re.union (str.to_re "X") (str.to_re "Y"))) (re.++ (str.to_re "_") (re.++ (re.range "0" "3") (re.++ (str.to_re "_") ((_ re.loop 3 3) (re.union (str.to_re "X") (str.to_re "Y"))))))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.union (str.to_re "X") (str.to_re "Y"))) (re.++ (str.to_re "_") (re.++ (re.range "0" "3") (re.++ (str.to_re "_") ((_ re.loop 3 3) (re.union (str.to_re "X") (str.to_re "Y")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)