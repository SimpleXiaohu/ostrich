;test regex "(?:(?:[0-9]\\d{0,2})(?:\\.\\d{3})*(?:,\\d{2})|0,(?:[0-9]\\d|0[0-9]))"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.++ (re.++ (re.range "0" "9") (re.++ (str.to_re "\\") ((_ re.loop 0 2) (str.to_re "d")))) (re.++ (re.* (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "d")))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d")))))) (re.++ (str.to_re "0") (re.++ (str.to_re ",") (re.union (re.++ (re.range "0" "9") (re.++ (str.to_re "\\") (str.to_re "d"))) (re.++ (str.to_re "0") (re.range "0" "9")))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)