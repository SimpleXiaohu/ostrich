;test regex "repo/bob/ebb/bb.{2,4}/nr/dl.+/.+\.xml"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "/") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "b") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "b") (re.++ ((_ re.loop 2 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (str.to_re "n") (re.++ (str.to_re "r") (re.++ (str.to_re "/") (re.++ (str.to_re "d") (re.++ (str.to_re "l") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (str.to_re "x") (re.++ (str.to_re "m") (re.++ (str.to_re "l") (str.to_re "\u{22}")))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)