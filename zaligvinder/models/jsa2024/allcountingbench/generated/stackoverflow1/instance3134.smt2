;test regex ^\d{0,2}\.(0|(1|2|6)?25|(3|6|8)?75|5)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.union (re.union (re.union (str.to_re "0") (re.++ (re.opt (re.union (re.union (str.to_re "1") (str.to_re "2")) (str.to_re "6"))) (str.to_re "25"))) (re.++ (re.opt (re.union (re.union (str.to_re "3") (str.to_re "6")) (str.to_re "8"))) (str.to_re "75"))) (str.to_re "5"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)