;test regex (087)|(088)|(089)[0-9]{7}";
(declare-const X String)
(assert (str.in_re X (re.union (re.union (str.to_re "087") (str.to_re "088")) (re.++ (str.to_re "089") (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.++ (str.to_re "\u{22}") (str.to_re ";")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)