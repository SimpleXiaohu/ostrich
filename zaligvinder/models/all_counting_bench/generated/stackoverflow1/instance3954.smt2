;test regex echo $zip|grep -E '^[0-9]\.[0-9]{1,2}\.[0-9]{1,2}$'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (str.to_re " "))))) (re.++ (str.to_re "") (re.++ (str.to_re "z") (re.++ (str.to_re "i") (str.to_re "p"))))) (re.++ (re.++ (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))) (re.++ (str.to_re "") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)