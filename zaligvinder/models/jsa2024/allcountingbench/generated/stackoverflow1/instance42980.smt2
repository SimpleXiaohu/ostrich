;test regex ".*.([^\.]{3})[^\.]_IN_+([0-9]+)"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "."))) (re.++ (re.diff re.allchar (str.to_re ".")) (re.++ (str.to_re "_") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (re.+ (str.to_re "_")) (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{22}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)