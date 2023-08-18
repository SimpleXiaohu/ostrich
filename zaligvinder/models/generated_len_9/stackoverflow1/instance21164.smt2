;test regex ([2-9][0-9]{2}) | (1(([3-9][0-9]{1}) | (2(([4-9]) | 3))) )
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re "1") (re.++ (re.union (re.++ (re.++ (re.range "3" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re "2") (re.union (re.++ (re.range "4" "9") (str.to_re " ")) (re.++ (str.to_re " ") (str.to_re "3")))))) (str.to_re " ")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)