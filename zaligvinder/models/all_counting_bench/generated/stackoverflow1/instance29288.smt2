;test regex regexp_substr('ffffffff-5fd1-456b-8f4c-4a6ecc3b7cba::11899999.99', '(\d{5})\.', 1, 1, NULL, 1)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "-") (re.++ (str.to_re "5") (re.++ (str.to_re "f") (re.++ (str.to_re "d") (re.++ (str.to_re "1") (re.++ (str.to_re "-") (re.++ (str.to_re "456") (re.++ (str.to_re "b") (re.++ (str.to_re "-") (re.++ (str.to_re "8") (re.++ (str.to_re "f") (re.++ (str.to_re "4") (re.++ (str.to_re "c") (re.++ (str.to_re "-") (re.++ (str.to_re "4") (re.++ (str.to_re "a") (re.++ (str.to_re "6") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "c") (re.++ (str.to_re "3") (re.++ (str.to_re "b") (re.++ (str.to_re "7") (re.++ (str.to_re "c") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "11899999") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "99") (str.to_re "\u{27}"))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re ".") (str.to_re "\u{27}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "N") (re.++ (str.to_re "U") (re.++ (str.to_re "L") (str.to_re "L"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)