;test regex ^((\d){3})(-)?(\d){2}(-)?(\d){4}(A|B[1-7]?|M|T|C[1-4]|D)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.union (re.union (re.union (re.union (str.to_re "A") (re.++ (str.to_re "B") (re.opt (re.range "1" "7")))) (str.to_re "M")) (str.to_re "T")) (re.++ (str.to_re "C") (re.range "1" "4"))) (str.to_re "D")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)