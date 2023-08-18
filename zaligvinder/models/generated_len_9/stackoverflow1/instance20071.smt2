;test regex ([0-9]? ?)?(([0-9]{3})|(\([0-9]{3}\)))( |\-)?\2\5?\2[0-9]
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (str.to_re " ")))) (re.++ (re.union ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")))) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.++ (_ re.reference 2) (re.++ (re.opt (_ re.reference 5)) (re.++ (_ re.reference 2) (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)