;test regex '/6\.0\.0\.0\.\d{3}/!s/6\.0\.0\.0/6.0.0.0.001/g'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re "6") (re.++ (str.to_re ".") (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (str.to_re "!") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "6") (re.++ (str.to_re ".") (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ (str.to_re "0") (re.++ (str.to_re "/") (re.++ (str.to_re "6") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "0") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "0") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "0") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "001") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{27}")))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)