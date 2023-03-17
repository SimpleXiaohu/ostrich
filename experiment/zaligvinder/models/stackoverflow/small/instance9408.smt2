;test regex ((^\u002b[6][0]([1-9]{2}))|(^[0]([1-9]{1})))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (str.to_re "\u{002b}") (re.++ (str.to_re "6") (re.++ (str.to_re "0") ((_ re.loop 2 2) (re.range "1" "9")))))) (re.++ (str.to_re "") (re.++ (str.to_re "0") ((_ re.loop 1 1) (re.range "1" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)