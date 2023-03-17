;test regex ((M|-)?\d{1,2}|//|XX|MM)/((M|-)?\d{1,2}|//|XX|MM)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.++ (re.opt (re.union (str.to_re "M") (str.to_re "-"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "/") (str.to_re "/"))) (re.++ (str.to_re "X") (str.to_re "X"))) (re.++ (str.to_re "M") (str.to_re "M"))) (re.++ (str.to_re "/") (re.opt (re.union (re.union (re.union (re.++ (re.opt (re.union (str.to_re "M") (str.to_re "-"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "/") (str.to_re "/"))) (re.++ (str.to_re "X") (str.to_re "X"))) (re.++ (str.to_re "M") (str.to_re "M"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)