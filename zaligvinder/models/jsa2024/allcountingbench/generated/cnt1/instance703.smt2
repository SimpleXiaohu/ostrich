;test regex ember-states-([0-9a-f]{40})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "-") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "a" "f"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)