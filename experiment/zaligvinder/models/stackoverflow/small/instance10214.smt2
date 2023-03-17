;test regex /^([0]\d|[1][0-2])\/([0-2]\d|[3][0-1])\/([2][01]|[1][6-9])\d{2}(\s(([0]\d|[1][0-2])|(0\d|1[0-9]|2[0-3]))(\:[0-5]\d){1,2})*\s*([aApP][mM]{0,2})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "2") (str.to_re "01")) (re.++ (str.to_re "1") (re.range "6" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.* (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "3")))) ((_ re.loop 1 2) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.opt (re.++ (re.union (str.to_re "a") (re.union (str.to_re "A") (re.union (str.to_re "p") (str.to_re "P")))) ((_ re.loop 0 2) (re.union (str.to_re "m") (str.to_re "M"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)