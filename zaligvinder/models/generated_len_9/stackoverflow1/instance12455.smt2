;test regex ^(([1-9]|1\d)(\.\d{1,2})?|20)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to_re "20"))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)