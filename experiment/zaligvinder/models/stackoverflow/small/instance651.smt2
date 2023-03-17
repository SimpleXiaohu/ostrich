;test regex \[0*([1-9]|[12][0-9]|3[01]) (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) (201[4-9]|20[2-9][0-9]|2[1-9][0-9]{2}|[3-9][0-9]{3}) ((?:0?[0-9]|1[0-9]|2[0-3]){2}:(?:0?[0-9]|[1-5][0-9])) by (\w+)\]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (re.* (str.to_re "0")) (re.++ (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))) (re.++ (str.to_re " ") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "a") (str.to_re "n"))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (str.to_re "g")))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (str.to_re "t")))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (str.to_re "c")))) (re.++ (str.to_re " ") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "201") (re.range "4" "9")) (re.++ (str.to_re "20") (re.++ (re.range "2" "9") (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.range "3" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (str.to_re " ") (re.++ (re.++ ((_ re.loop 2 2) (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "3")))) (re.++ (str.to_re ":") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "]")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)