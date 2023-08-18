;test regex ^[B|K|T|P][A-Z][0-9]{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "B") (re.union (str.to_re "|") (re.union (str.to_re "K") (re.union (str.to_re "|") (re.union (str.to_re "T") (re.union (str.to_re "|") (str.to_re "P"))))))) (re.++ (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)