;test regex \\bpowers?\\s+(?:\\w+\\s+){0,2}energ(?:y|ies)\\b
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ ((_ re.loop 0 2) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "w")) (re.++ (str.to_re "\\") (re.+ (str.to_re "s")))))) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (re.union (str.to_re "y") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (str.to_re "s")))) (re.++ (str.to_re "\\") (str.to_re "b")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)