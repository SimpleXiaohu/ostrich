;test regex \[value-([0-5]\d{2}|6[0-5]\d|66[01])\]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.++ (re.range "0" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "6") (re.++ (re.range "0" "5") (re.range "0" "9")))) (re.++ (str.to_re "66") (str.to_re "01"))) (str.to_re "]")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)