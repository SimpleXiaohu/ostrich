;test regex [a-c]?cdr*{0,2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.range "a" "c")) (re.++ (str.to_re "c") (re.++ (str.to_re "d") ((_ re.loop 0 2) (re.* (str.to_re "r"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)