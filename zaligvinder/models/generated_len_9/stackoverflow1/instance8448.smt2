;test regex ^((([0-2]?\d{0,2}\.){3}([0-2]?\d{0,2}))|(([\da-fA-F]{1,4}:){7}([\da-fA-F]{1,4})))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ ((_ re.loop 3 3) (re.++ (re.opt (re.range "0" "2")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re ".")))) (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)