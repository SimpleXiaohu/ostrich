;test regex ^([A-Z]{1}[a-z]{1,})$|^([A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,})$|^([A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,})$|^$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))) (re.++ (str.to_re "\u{0020}") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z")))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))) (re.++ (str.to_re "\u{0020}") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))) (re.++ (str.to_re "\u{0020}") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))))))))))) (str.to_re ""))) (re.++ (str.to_re "") (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)