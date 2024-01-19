;test regex ^[VvEeTtPp](-(\d{4,12}){0,1}){0,1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "V") (re.union (str.to_re "v") (re.union (str.to_re "E") (re.union (str.to_re "e") (re.union (str.to_re "T") (re.union (str.to_re "t") (re.union (str.to_re "P") (str.to_re "p")))))))) ((_ re.loop 0 1) (re.++ (str.to_re "-") ((_ re.loop 0 1) ((_ re.loop 4 12) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)