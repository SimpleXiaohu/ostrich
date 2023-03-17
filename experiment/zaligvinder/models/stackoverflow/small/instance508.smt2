;test regex ^([0-1]?[0-9]{1,9})$|^(2000000000)$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 9) (re.range "0" "9")))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (str.to_re "2000000000")) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)