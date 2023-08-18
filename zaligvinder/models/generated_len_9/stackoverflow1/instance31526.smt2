;test regex (?:(?:00)?(\d{3})|0)(\d{2})(\d{1})(\d{6})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "00")) ((_ re.loop 3 3) (re.range "0" "9"))) (str.to_re "0")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)