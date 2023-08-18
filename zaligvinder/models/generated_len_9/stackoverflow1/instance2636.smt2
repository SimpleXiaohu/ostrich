;test regex ~(.{10}hars/t.{10})~
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "~") (re.++ (re.++ ((_ re.loop 10 10) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "t") ((_ re.loop 10 10) (re.diff re.allchar (str.to_re "\n")))))))))) (str.to_re "~")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)