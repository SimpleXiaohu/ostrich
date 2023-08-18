;test regex str REGEXP '^([+][0-9]{1,2})?([(][0-9]{3}[)]|[0-9]{3})[-. ][0-9]{4}$'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))))) (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "+") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (re.union (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re ".") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9"))))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)