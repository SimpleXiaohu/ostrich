;test regex [0-2]{1}W|[1-12]{2}M|[1-2]{1}Y
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "2")) (str.to_re "W")) (re.++ ((_ re.loop 2 2) (re.range "1" "12")) (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (re.range "1" "2")) (str.to_re "Y")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)