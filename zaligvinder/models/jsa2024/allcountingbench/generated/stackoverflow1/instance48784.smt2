;test regex (([0-2]?\d{1})|([3][0,1]{1}))\
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "3") ((_ re.loop 1 1) (re.union (str.to_re "0") (re.union (str.to_re ",") (str.to_re "1")))))) (str.to_re "\"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)