;test regex ^(\+)?([9]{1}[2]{1})?-? ?(\()?([0]{1})?[1-9]{2,4}(\))?-? ??(\()?[1-9]{4,7}(\))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "+")) (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to_re "9")) ((_ re.loop 1 1) (str.to_re "2")))) (re.++ (re.opt (str.to_re "-")) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (str.to_re "(")) (re.++ (re.opt ((_ re.loop 1 1) (str.to_re "0"))) (re.++ ((_ re.loop 2 4) (re.range "1" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (str.to_re "-")) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 4 7) (re.range "1" "9")) (re.opt (str.to_re ")"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)