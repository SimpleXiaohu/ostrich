;test regex ([A-Z]{1,2}|[A-Z0-9]{1,4})([ ]{1})([0-9A-Z]{1,3})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 4) (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)