;test regex PATINDEX('%[0-9]{1,2}-[A-Z]{1,2}%', lower([NAME]))>0
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "%") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.++ (str.to_re "%") (str.to_re "\u{27}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.union (str.to_re "N") (re.union (str.to_re "A") (re.union (str.to_re "M") (str.to_re "E")))))))))))) (re.++ (str.to_re ">") (str.to_re "0")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)