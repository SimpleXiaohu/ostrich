;test regex /^[a-zA-Z\u4E00-\u9FA5\/]{1,20}/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "\u{4e00}" "\u{9fa5}") (str.to_re "/"))))) (str.to_re "/"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)