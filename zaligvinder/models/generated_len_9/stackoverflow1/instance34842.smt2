;test regex ^\* [0-9]{3} +([0-9]{4}.[0-9a-z]{4}.[0-9a-z]{4}).*(Veth[0-9]{4})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "*") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "V") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "h") ((_ re.loop 4 4) (re.range "0" "9"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)