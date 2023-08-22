;test regex ^(5000)|(([1-4][0-9]|[4-9])[0-9]{2})$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (str.to_re "5000")) (re.++ (re.++ (re.union (re.++ (re.range "1" "4") (re.range "0" "9")) (re.range "4" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)