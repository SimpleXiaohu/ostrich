;test regex (?:\d+\.\d.*?dummy:){1}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 1) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (str.to_re ":")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)