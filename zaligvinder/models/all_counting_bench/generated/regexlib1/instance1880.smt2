;test regex ^((((0031)|(\+31))(\-)?6(\-)?[0-9]{8})|(06(\-)?[0-9]{8})|(((0031)|(\+31))(\-)?[1-9]{1}(([0-9](\-)?[0-9]{7})|([0-9]{2}(\-)?[0-9]{6})))|([0]{1}[1-9]{1}(([0-9](\-)?[0-9]{7})|([0-9]{2}(\-)?[0-9]{6}))))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.++ (re.union (str.to_re "0031") (re.++ (str.to_re "+") (str.to_re "31"))) (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "6") (re.++ (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9")))))) (re.++ (str.to_re "06") (re.++ (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9"))))) (re.++ (re.union (str.to_re "0031") (re.++ (str.to_re "+") (str.to_re "31"))) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.union (re.++ (re.range "0" "9") (re.++ (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 6 6) (re.range "0" "9"))))))))) (re.++ ((_ re.loop 1 1) (str.to_re "0")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.union (re.++ (re.range "0" "9") (re.++ (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 6 6) (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)