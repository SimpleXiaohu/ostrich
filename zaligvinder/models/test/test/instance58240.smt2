;test regex ^(([X]{0,3}([I]([XV]?|[I]{0,2})?|([V][I]{0,3})?)))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 0 3) (str.to_re "X")) (re.union (re.++ (str.to_re "I") (re.opt (re.union (re.opt (re.union (str.to_re "X") (str.to_re "V"))) ((_ re.loop 0 2) (str.to_re "I"))))) (re.opt (re.++ (str.to_re "V") ((_ re.loop 0 3) (str.to_re "I"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)