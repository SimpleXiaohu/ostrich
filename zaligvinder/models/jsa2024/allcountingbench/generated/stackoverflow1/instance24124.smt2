;test regex (\[cid:(?:[0-9A-Z-]{7,8}){5}\])
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (str.to_re "c") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ ((_ re.loop 5 5) ((_ re.loop 7 8) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (str.to_re "-"))))) (str.to_re "]")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)