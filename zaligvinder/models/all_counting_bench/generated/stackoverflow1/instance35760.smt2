;test regex \\s*(\\-|\\+)\\s*\\d+\\.?\\d+[a-zA-Z]{0}(\\s|\\+|\\-)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (re.union (re.++ (str.to_re "\\") (str.to_re "-")) (re.+ (str.to_re "\\"))) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (re.opt (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "d")) (re.++ ((_ re.loop 0 0) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (re.union (re.++ (str.to_re "\\") (str.to_re "s")) (re.+ (str.to_re "\\"))) (re.++ (str.to_re "\\") (str.to_re "-")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)