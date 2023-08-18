;test regex ^([0-57-9]|E)[12][0-9]{3}[A-Z]?[A-Z]([0-9]{3}|[0-9]{4})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union (re.union (re.range "0" "57") (re.union (str.to_re "-") (str.to_re "9"))) (str.to_re "E")) (re.++ (str.to_re "12") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)