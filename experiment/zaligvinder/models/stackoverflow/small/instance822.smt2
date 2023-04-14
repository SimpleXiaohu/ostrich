;test regex ^[a-zA-Z0-9]+(?:-PREM)?_[a-zA-Z0-9]{3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "P") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (str.to_re "M")))))) (re.++ (str.to_re "_") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)