;test regex abc(d{3})\.name\.(w{3})_p([0-9]{3,4})\.[0-9]+\.csv/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "c") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (re.++ (str.to_re ".") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ".") (re.++ ((_ re.loop 3 3) (str.to_re "w")) (re.++ (str.to_re "_") (re.++ (str.to_re "p") (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "s") (re.++ (str.to_re "v") (str.to_re "/")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)