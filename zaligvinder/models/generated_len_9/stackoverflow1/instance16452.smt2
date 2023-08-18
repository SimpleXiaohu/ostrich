;test regex ([0-4]?\d{1,3}) To:\1
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.opt (re.range "0" "4")) ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "o") (re.++ (str.to_re ":") (_ re.reference 1))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)