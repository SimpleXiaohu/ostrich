;test regex \\d{1,16}@\\d{1,15}|\\d{1,13}@\\d{1,18}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 16) (str.to_re "d")) (re.++ (str.to_re "@") (re.++ (str.to_re "\\") ((_ re.loop 1 15) (str.to_re "d")))))) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 13) (str.to_re "d")) (re.++ (str.to_re "@") (re.++ (str.to_re "\\") ((_ re.loop 1 18) (str.to_re "d")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)