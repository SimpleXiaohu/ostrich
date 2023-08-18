;test regex theStr.match('^[a-z]{1}[0-9]{3}[a-z]{1}$')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.range "a" "z")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "a" "z")))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)