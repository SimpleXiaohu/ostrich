;test regex ^(\+44\s?7\d{3}|\(?07\d{3}\)|\(?02\d{3}\)?|\(?01\d{3}\)?)\s?\d{3}[-\s]?\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "+") (re.++ (str.to_re "44") (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "7") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (re.opt (str.to_re "(")) (re.++ (str.to_re "07") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")"))))) (re.++ (re.opt (str.to_re "(")) (re.++ (str.to_re "02") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")))))) (re.++ (re.opt (str.to_re "(")) (re.++ (str.to_re "01") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")))))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "-") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) ((_ re.loop 4 4) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)