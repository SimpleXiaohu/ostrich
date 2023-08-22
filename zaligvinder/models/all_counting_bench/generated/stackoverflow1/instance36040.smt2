;test regex ^(-?[1-8]?\d(?:\.\d{1,18})?|90(?:\.0{1,18})?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (re.opt (str.to_re "-")) (re.++ (re.opt (re.range "1" "8")) (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 18) (re.range "0" "9"))))))) (re.++ (str.to_re "90") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 18) (str.to_re "0"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)