;test regex (?:[A-Z0-9]{6}-|[A-Z0-9]{5}--)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 6 6) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "-")) (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (str.to_re "-") (str.to_re "-"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)