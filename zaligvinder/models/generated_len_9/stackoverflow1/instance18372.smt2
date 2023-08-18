;test regex ^\h*(F|A|E)?\d{6}.*?\R{2}\K
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (str.to_re "h")) (re.++ (re.opt (re.union (re.union (str.to_re "F") (str.to_re "A")) (str.to_re "E"))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 2 2) (str.to_re "R")) (str.to_re "K")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)