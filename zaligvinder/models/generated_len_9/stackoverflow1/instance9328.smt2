;test regex \A\{[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}\}\Z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "{") (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.++ (str.to_re "}") (str.to_re "Z")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)