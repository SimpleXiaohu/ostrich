;test regex fund.{1,7}assets
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "f") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ ((_ re.loop 1 7) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (str.to_re "s")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)