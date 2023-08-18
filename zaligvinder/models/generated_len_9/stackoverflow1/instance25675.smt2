;test regex D"?(\d{4}(?:-\d\d){2})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "D") (re.++ (re.opt (str.to_re "\u{22}")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to_re "-") (re.++ (re.range "0" "9") (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)