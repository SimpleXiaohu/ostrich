;test regex ^\\d{2}[A-Z]{5}\\d{4}([A-Z]\\d){2}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 4 4) (str.to_re "d")) ((_ re.loop 2 2) (re.++ (re.range "A" "Z") (re.++ (str.to_re "\\") (str.to_re "d")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)