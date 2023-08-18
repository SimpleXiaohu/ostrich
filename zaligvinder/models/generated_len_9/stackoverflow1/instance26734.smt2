;test regex "A(\\d{6})_B(\\d{6})_v(\\d{1,3}\\.\\d{1,2})_(.*?)\\.xml"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "A") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d"))) (re.++ (str.to_re "_") (re.++ (str.to_re "B") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d"))) (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 3) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") ((_ re.loop 1 2) (str.to_re "d"))))))) (re.++ (str.to_re "_") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "x") (re.++ (str.to_re "m") (re.++ (str.to_re "l") (str.to_re "\u{22}")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)