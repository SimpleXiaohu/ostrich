;test regex r"\+61\(2\)9876-7\d{3,3}\Z"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "+") (re.++ (str.to_re "61") (re.++ (str.to_re "(") (re.++ (str.to_re "2") (re.++ (str.to_re ")") (re.++ (str.to_re "9876") (re.++ (str.to_re "-") (re.++ (str.to_re "7") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "Z") (str.to_re "\u{22}")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)