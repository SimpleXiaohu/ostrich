;test regex ^([A-Za-z]{2,40}[ ]{0,40})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 40) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 0 40) (str.to_re " ")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)