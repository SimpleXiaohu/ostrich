;test regex ^[t]\+[0-9]{2,4}[dmyw]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "t") (re.++ (str.to_re "+") (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.union (str.to_re "d") (re.union (str.to_re "m") (re.union (str.to_re "y") (str.to_re "w"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)