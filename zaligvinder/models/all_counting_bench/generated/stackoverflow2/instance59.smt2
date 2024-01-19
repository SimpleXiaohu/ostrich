;test regex ([0-9]{16}):([0-9]{5,20}):([a-zA-Z0-9\\+/=]{28})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 16 16) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 5 20) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 28 28) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "\\") (re.union (str.to_re "+") (re.union (str.to_re "/") (str.to_re "="))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)