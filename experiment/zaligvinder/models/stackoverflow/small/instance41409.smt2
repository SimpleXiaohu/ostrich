;test regex (^(\d{6}|\d{8}))(d|m|dm|md|)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.union ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")))) (re.union (re.++ (str.to_re "") (re.union (re.union (re.union (str.to_re "d") (str.to_re "m")) (re.++ (str.to_re "d") (str.to_re "m"))) (re.++ (str.to_re "m") (str.to_re "d")))) (str.to_re ""))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)