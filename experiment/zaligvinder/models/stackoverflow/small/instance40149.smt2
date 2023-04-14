;test regex ^(\#([1-9a-fA-F]{3}|[1-9a-fA-F]{6})|[rR][gG][bB]\(([01]{0,1}\d{1,2}|(2[1234]\d|5[012345]))\,([01]{0,1}\d{1,2}|(2[1234]\d|5[012345]))\,([01]{0,1}\d{1,2}|(2[1234]\d|5[012345]))\))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "#") (re.union ((_ re.loop 3 3) (re.union (re.range "1" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) ((_ re.loop 6 6) (re.union (re.range "1" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.++ (re.union (str.to_re "b") (str.to_re "B")) (re.++ (str.to_re "(") (re.++ (re.union (re.++ ((_ re.loop 0 1) (str.to_re "01")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.union (re.++ (str.to_re "2") (re.++ (str.to_re "1234") (re.range "0" "9"))) (re.++ (str.to_re "5") (str.to_re "012345")))) (re.++ (str.to_re ",") (re.++ (re.union (re.++ ((_ re.loop 0 1) (str.to_re "01")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.union (re.++ (str.to_re "2") (re.++ (str.to_re "1234") (re.range "0" "9"))) (re.++ (str.to_re "5") (str.to_re "012345")))) (re.++ (str.to_re ",") (re.++ (re.union (re.++ ((_ re.loop 0 1) (str.to_re "01")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.union (re.++ (str.to_re "2") (re.++ (str.to_re "1234") (re.range "0" "9"))) (re.++ (str.to_re "5") (str.to_re "012345")))) (str.to_re ")")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)