;test regex ^([12][0-9]{3})-(0[1-9]|1[012])-([012][1-9]|[123]0|31)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "12") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "012") (re.range "1" "9")) (re.++ (str.to_re "123") (str.to_re "0"))) (str.to_re "31"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)