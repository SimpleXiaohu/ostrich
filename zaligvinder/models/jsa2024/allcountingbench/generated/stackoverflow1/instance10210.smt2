;test regex [+-]?\d{4}(-[01]\d(-[0-3]\d(T[0-2]\d:[0-5]\d:?([0-5]\d(\.\d+)?)?[+-][0-2]\d:[0-5]\dZ?)?)?)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") (re.++ (str.to_re "01") (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re "-") (re.++ (re.range "0" "3") (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re "T") (re.++ (re.range "0" "2") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (re.opt (str.to_re ":")) (re.++ (re.opt (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))))) (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.++ (re.range "0" "2") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.opt (str.to_re "Z")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)