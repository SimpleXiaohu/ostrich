;test regex 5 * ( {0,0} + {0,1} ) >= 4 * ( {0,2} / {0,3} )
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "5") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (re.++ ((_ re.loop 0 0) (str.to_re " ")) (re.++ (re.+ (str.to_re " ")) (re.++ ((_ re.loop 0 1) (str.to_re " ")) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ (str.to_re ">") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "4") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 2) (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ ((_ re.loop 0 3) (str.to_re " ")) (str.to_re " "))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)