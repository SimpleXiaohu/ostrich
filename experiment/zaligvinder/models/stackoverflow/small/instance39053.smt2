;test regex (?:\\$\\s*?\\d{0,3}\\.\\d{0,4}\\s*?/?day)?
(declare-const X String)
(assert (str.in_re X (re.opt (re.++ (str.to_re "\\") (re.++ (str.to_re "") (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 0 3) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 0 4) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (re.opt (str.to_re "/")) (re.++ (str.to_re "d") (re.++ (str.to_re "a") (str.to_re "y")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)