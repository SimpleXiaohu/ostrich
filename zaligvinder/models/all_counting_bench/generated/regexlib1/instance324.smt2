;test regex ((8|\+7)-?)?\(?\d{3,5}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}((-?\d{1})?-?\d{1})?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "8") (re.++ (str.to_re "+") (str.to_re "7"))) (re.opt (str.to_re "-")))) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)