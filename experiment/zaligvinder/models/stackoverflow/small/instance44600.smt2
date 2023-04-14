;test regex "\\w{3},\\s\\w{3}\\s\\d{2}"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "w")))) (re.++ (str.to_re ",") (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (str.to_re "\u{22}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)