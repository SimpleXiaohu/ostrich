;test regex ([com]{3}\.)?[com]{3}
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 3 3) (re.union (str.to_re "c") (re.union (str.to_re "o") (str.to_re "m")))) (str.to_re "."))) ((_ re.loop 3 3) (re.union (str.to_re "c") (re.union (str.to_re "o") (str.to_re "m")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)