;test regex ([0-9]{1,2}:?(?:[0-9]{2})?)\s*?(AM?|PM?)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re ":")) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "M"))) (re.++ (str.to_re "P") (re.opt (str.to_re "M"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)