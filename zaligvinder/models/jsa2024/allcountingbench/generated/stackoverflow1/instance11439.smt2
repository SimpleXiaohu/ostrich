;test regex (?:\((\w+\h+[0-9]{4}+)\))? # issue info (optional)
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "(") (re.++ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.+ (str.to_re "h")) (re.+ ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re ")")))) (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (str.to_re "l")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)