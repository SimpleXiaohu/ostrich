;test regex ifconfig eth0 | grep -Eo [:0-9A-F:]{2}\(\:[:0-9A-F:]{2}\){5}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "0") (str.to_re " ")))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (re.range "0" "9") (re.union (re.range "A" "F") (str.to_re ":"))))) (re.++ (str.to_re "(") (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (re.range "0" "9") (re.union (re.range "A" "F") (str.to_re ":"))))) ((_ re.loop 5 5) (str.to_re ")")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)