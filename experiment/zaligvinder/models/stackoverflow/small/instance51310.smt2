;test regex DANIEL[ ]{1,5}BAYLIS
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ ((_ re.loop 1 5) (str.to_re " ")) (re.++ (str.to_re "B") (re.++ (str.to_re "A") (re.++ (str.to_re "Y") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (str.to_re "S")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)