;test regex %r [%t] %-5p %c{2} %x - %m%n
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "%") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "%") (str.to_re "t")) (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ (str.to_re "-") (re.++ (str.to_re "5") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ ((_ re.loop 2 2) (str.to_re "c")) (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (str.to_re "%") (re.++ (str.to_re "m") (re.++ (str.to_re "%") (str.to_re "n"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)