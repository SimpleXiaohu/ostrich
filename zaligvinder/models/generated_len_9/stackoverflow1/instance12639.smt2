;test regex (\\b(?:\\d[-,\\h]?+){5,7}\\d\\b)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ ((_ re.loop 5 7) (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.+ (re.opt (re.union (str.to_re "-") (re.union (str.to_re ",") (re.union (str.to_re "\\") (str.to_re "h"))))))))) (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.++ (str.to_re "\\") (str.to_re "b")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)