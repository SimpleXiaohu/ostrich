;test regex %-1p %d %t/%c{1} - %m%n
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "%") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ (str.to_re "t") (re.++ (str.to_re "/") (re.++ (str.to_re "%") (re.++ ((_ re.loop 1 1) (str.to_re "c")) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ (str.to_re "m") (re.++ (str.to_re "%") (str.to_re "n"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)