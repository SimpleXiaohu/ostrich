;test regex "\\A4\\d{15}\\z"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "A") (re.++ (str.to_re "4") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 15 15) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (str.to_re "z") (str.to_re "\u{22}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)