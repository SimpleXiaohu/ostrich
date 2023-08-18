;test regex [\+]{0,1}(\d{10,13}|[\(][\+]{0,1}\d{2,}[\13)]*\d{5,13}|\d{2,6}[\-]{1}\d{2,13}[\-]*\d{3,13})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (str.to_re "+")) (re.union (re.union ((_ re.loop 10 13) (re.range "0" "9")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 0 1) (str.to_re "+")) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.* (re.union (_ re.reference 13) (str.to_re ")"))) ((_ re.loop 5 13) (re.range "0" "9"))))))) (re.++ ((_ re.loop 2 6) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 2 13) (re.range "0" "9")) (re.++ (re.* (str.to_re "-")) ((_ re.loop 3 13) (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)