;test regex width=(\d{1,4})px;height=(\d{1,4})px;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "=") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (str.to_re "p") (re.++ (str.to_re "x") (re.++ (str.to_re ";") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (str.to_re "p") (re.++ (str.to_re "x") (str.to_re ";")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)