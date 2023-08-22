;test regex \A\/attachment\/([a-f0-9\-]{36})\/(.*)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "/") (re.++ ((_ re.loop 36 36) (re.union (re.range "a" "f") (re.union (re.range "0" "9") (str.to_re "-")))) (re.++ (str.to_re "/") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)