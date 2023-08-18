;test regex `name` IN \((:[0-9a-z]{32}),(:[0-9a-z]{32}),(:[0-9a-z]{32})\)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "`") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "`") (re.++ (str.to_re " ") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ (str.to_re ":") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re ":") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z")))))) (re.++ (str.to_re ",") (re.++ (re.++ (str.to_re ":") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z")))) (str.to_re ")"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)