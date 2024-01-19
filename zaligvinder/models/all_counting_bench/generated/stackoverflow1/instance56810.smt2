;test regex "(\\d{1,2})([C-HJ-NP-X])([A-HJ-NP-Z])([A-HJ-NP-Z])(\\d{2,10})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 1 2) (str.to_re "d"))) (re.++ (re.union (re.range "C" "H") (re.union (re.range "J" "N") (re.range "P" "X"))) (re.++ (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.range "P" "Z"))) (re.++ (re.union (re.range "A" "H") (re.union (re.range "J" "N") (re.range "P" "Z"))) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 2 10) (str.to_re "d"))) (str.to_re "\u{22}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)