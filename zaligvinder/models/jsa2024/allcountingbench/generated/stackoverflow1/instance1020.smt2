;test regex (\d{1,2}-[a-zA-Z]{3}-\d{4}) Time: (\d{2}:\d{2}:\d{2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))))) (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)