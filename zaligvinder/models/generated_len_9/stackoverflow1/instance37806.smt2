;test regex "R(?:\\d{1,3}(?:[\\s,]\\d{3})+|\\d+)(?:\\.\\d+)?"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "R") (re.++ (re.union (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 3) (str.to_re "d")) (re.+ (re.++ (re.union (str.to_re "\\") (re.union (str.to_re "s") (str.to_re ","))) (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "d"))))))) (re.++ (str.to_re "\\") (re.+ (str.to_re "d")))) (re.++ (re.opt (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.+ (str.to_re "d")))))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)