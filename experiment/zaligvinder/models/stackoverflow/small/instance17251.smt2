;test regex ^(?:(?:(\+?972|\(\+?972\)|\+?\(972\))(?:\s|\.|-)?([1-9]\d?))|(0[23489]{1})|(0[57]{1}[0-9]))(?:\s|\.|-)?([^0\D]{1}\d{2}(?:\s|\.|-)?\d{4})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (re.union (re.union (re.++ (re.opt (str.to_re "+")) (str.to_re "972")) (re.++ (str.to_re "(") (re.++ (re.opt (str.to_re "+")) (re.++ (str.to_re "972") (str.to_re ")"))))) (re.++ (re.opt (str.to_re "+")) (re.++ (str.to_re "(") (re.++ (str.to_re "972") (str.to_re ")"))))) (re.++ (re.opt (re.union (re.union (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re ".")) (str.to_re "-"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to_re "0") ((_ re.loop 1 1) (str.to_re "23489")))) (re.++ (str.to_re "0") (re.++ ((_ re.loop 1 1) (str.to_re "57")) (re.range "0" "9")))) (re.++ (re.opt (re.union (re.union (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re ".")) (str.to_re "-"))) (re.++ ((_ re.loop 1 1) (re.inter (re.diff re.allchar (str.to_re "0")) (re.diff re.allchar (re.diff re.allchar (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (re.union (re.union (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re ".")) (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)