;test regex \^ [ itemA | itemB | itemC | itemD | item E | item F] {3}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "^") (re.++ (str.to_re " ") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re "A") (re.union (str.to_re " ") (re.union (str.to_re "|") (re.union (str.to_re " ") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re "B") (re.union (str.to_re " ") (re.union (str.to_re "|") (re.union (str.to_re " ") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re "C") (re.union (str.to_re " ") (re.union (str.to_re "|") (re.union (str.to_re " ") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re "D") (re.union (str.to_re " ") (re.union (str.to_re "|") (re.union (str.to_re " ") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re " ") (re.union (str.to_re "E") (re.union (str.to_re " ") (re.union (str.to_re "|") (re.union (str.to_re " ") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "e") (re.union (str.to_re "m") (re.union (str.to_re " ") (str.to_re "F")))))))))))))))))))))))))))))))))))))))))))))))) ((_ re.loop 3 3) (str.to_re " ")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)