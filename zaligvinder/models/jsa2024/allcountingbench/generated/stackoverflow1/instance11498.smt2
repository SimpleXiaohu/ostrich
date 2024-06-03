;test regex /ev\d{7}\/\d{4}(-\d)?|(ch|co|ev|nm|tt)\d{7}/
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") (re.range "0" "9"))))))))) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "c") (str.to_re "h")) (re.++ (str.to_re "c") (str.to_re "o"))) (re.++ (str.to_re "e") (str.to_re "v"))) (re.++ (str.to_re "n") (str.to_re "m"))) (re.++ (str.to_re "t") (str.to_re "t"))) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "/"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)