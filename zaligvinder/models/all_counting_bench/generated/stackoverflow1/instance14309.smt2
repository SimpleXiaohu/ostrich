;test regex "^\d{3}_RE_\d{8}_\d{6}.TXT$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "T") (re.++ (str.to_re "X") (str.to_re "T")))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)