;test regex ^NORMFLY \d+(\.\d{1,2})? \d+(\.\d{1,2})? \d+(\.\d{1,2})?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "N") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (re.++ (str.to_re "M") (re.++ (str.to_re "F") (re.++ (str.to_re "L") (re.++ (str.to_re "Y") (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)