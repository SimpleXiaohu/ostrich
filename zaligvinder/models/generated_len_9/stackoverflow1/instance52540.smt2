;test regex ^(?:[abc]{3}r?|r[abc]{3})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ ((_ re.loop 3 3) (re.union (str.to_re "a") (re.union (str.to_re "b") (str.to_re "c")))) (re.opt (str.to_re "r"))) (re.++ (str.to_re "r") ((_ re.loop 3 3) (re.union (str.to_re "a") (re.union (str.to_re "b") (str.to_re "c"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)