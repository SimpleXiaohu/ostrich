;test regex ^rgba\(\d{1,3}(\.\d{1,2})?%?, ?\d{1,3}(\.\d{1,2})?%?, ?\d{1,3}(\.\d{1,2})?%?, ?[01](\.\d{1,6})?\)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "(") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to_re "%")))))))))) (re.++ (str.to_re ",") (re.++ (re.opt (str.to_re " ")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to_re "%"))))))) (re.++ (str.to_re ",") (re.++ (re.opt (str.to_re " ")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to_re "%"))))))) (re.++ (str.to_re ",") (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re "01") (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 6) (re.range "0" "9")))) (str.to_re ")")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)