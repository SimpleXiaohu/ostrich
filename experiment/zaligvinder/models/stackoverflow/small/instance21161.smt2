;test regex ^(2[0-9]{3})-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01]) (0[0-9]|1[0-9]|2[0123])\:([012345][0-9])\:([012345][0-9])$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "2") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re " ") (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (str.to_re "0123"))) (re.++ (str.to_re ":") (re.++ (re.++ (str.to_re "012345") (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (str.to_re "012345") (re.range "0" "9"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)