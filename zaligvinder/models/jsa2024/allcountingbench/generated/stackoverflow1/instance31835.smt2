;test regex ^[Pp]\d{4}(ABC|abc)\d{4}-?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "B") (str.to_re "C"))) (re.++ (str.to_re "a") (re.++ (str.to_re "b") (str.to_re "c")))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)