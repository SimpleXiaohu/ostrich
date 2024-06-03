;test regex `age` BETWEEN (:[0-9a-z]{32}) AND (:[0-9a-z]{32})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "`") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "`") (re.++ (str.to_re " ") (re.++ (str.to_re "B") (re.++ (str.to_re "E") (re.++ (str.to_re "T") (re.++ (str.to_re "W") (re.++ (str.to_re "E") (re.++ (str.to_re "E") (re.++ (str.to_re "N") (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re ":") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z")))) (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re " ") (re.++ (str.to_re ":") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)