;test regex (?:\d{1,2}|\d[A-HJ-KSTUW])
(declare-const X String)
(assert (str.in_re X (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.range "0" "9") (re.union (re.range "A" "H") (re.union (re.range "J" "K") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "U") (str.to_re "W"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)