;test regex REGEXP_SUBSTR( ly, '[ab2]{2,5}(ef)', 1, 1, NULL, 1 )
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "l") (str.to_re "y"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 2 5) (re.union (str.to_re "a") (re.union (str.to_re "b") (str.to_re "2")))) (re.++ (re.++ (str.to_re "e") (str.to_re "f")) (str.to_re "\u{27}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "N") (re.++ (str.to_re "U") (re.++ (str.to_re "L") (str.to_re "L"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "1") (str.to_re " "))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)