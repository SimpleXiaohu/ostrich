;test regex ((G|I|R|F)[0-9]{1,4}-?){1,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.++ (re.union (re.union (re.union (str.to_re "G") (str.to_re "I")) (str.to_re "R")) (str.to_re "F")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to_re "-"))))) ((_ re.loop 1 1) (re.++ (re.union (re.union (re.union (str.to_re "G") (str.to_re "I")) (str.to_re "R")) (str.to_re "F")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to_re "-"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)