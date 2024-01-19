;test regex ([FGHJKMNQUVXZ][0-9]{1,2})?
(declare-const X String)
(assert (str.in_re X (re.opt (re.++ (re.union (str.to_re "F") (re.union (str.to_re "G") (re.union (str.to_re "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "Q") (re.union (str.to_re "U") (re.union (str.to_re "V") (re.union (str.to_re "X") (str.to_re "Z")))))))))))) ((_ re.loop 1 2) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)