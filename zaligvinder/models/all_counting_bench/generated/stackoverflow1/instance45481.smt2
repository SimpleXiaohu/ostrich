;test regex ^\d{4}_(?:1[0-2]|0?[1-9])_(?:3[01]|[1-2]\d|0?[1-9])$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.++ (str.to_re "_") (re.union (re.union (re.++ (str.to_re "3") (str.to_re "01")) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)