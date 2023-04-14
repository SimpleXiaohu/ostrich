;test regex ([\W][nameNAME]{4}[\W])
(declare-const X String)
(assert (str.in_re X (re.++ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) (re.++ ((_ re.loop 4 4) (re.union (str.to_re "n") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "e") (re.union (str.to_re "N") (re.union (str.to_re "A") (re.union (str.to_re "M") (str.to_re "E"))))))))) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)