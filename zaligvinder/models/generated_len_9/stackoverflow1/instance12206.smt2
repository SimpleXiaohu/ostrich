;test regex "(\\S+\\s+){3}\\s*|(\\S+\\s*){1,2}$"
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "S")) (re.++ (str.to_re "\\") (re.+ (str.to_re "s")))))) (re.++ (str.to_re "\\") (re.* (str.to_re "s"))))) (re.++ ((_ re.loop 1 2) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "S")) (re.++ (str.to_re "\\") (re.* (str.to_re "s")))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)