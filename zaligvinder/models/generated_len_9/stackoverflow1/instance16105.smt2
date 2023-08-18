;test regex [2-9]\\d{2}(-){0,1}[2-9]\\d{2}(-){0,1}\\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.range "2" "9") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.++ (re.range "2" "9") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)