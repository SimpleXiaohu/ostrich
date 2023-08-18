;test regex MAC:[A-F0-9]{18}(:[A-Z0-9]{2}){5}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "M") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re ":") (re.++ ((_ re.loop 18 18) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 5 5) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)