;test regex ([rf!<>=][1-9][0-9]{1,2})*?
(declare-const X String)
(assert (str.in_re X (re.* (re.++ (re.union (str.to_re "r") (re.union (str.to_re "f") (re.union (str.to_re "!") (re.union (str.to_re "<") (re.union (str.to_re ">") (str.to_re "=")))))) (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)