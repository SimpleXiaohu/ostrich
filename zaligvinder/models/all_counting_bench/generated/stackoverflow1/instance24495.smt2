;test regex egrep -v '^ *[0-9]+((\.[0-9]+){3})? +banned\.$'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))) (re.++ (str.to_re "") (re.++ (re.* (str.to_re " ")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 3 3) (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.+ (str.to_re " ")) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (str.to_re "."))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)