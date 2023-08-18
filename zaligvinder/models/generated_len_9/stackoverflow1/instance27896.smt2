;test regex [0-9]{1,7}.*\s(?:Street|St\.|St|Road|Rd|Rd\.)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "t")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "t") (str.to_re ".")))) (re.++ (str.to_re "S") (str.to_re "t"))) (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (str.to_re "d"))))) (re.++ (str.to_re "R") (str.to_re "d"))) (re.++ (str.to_re "R") (re.++ (str.to_re "d") (str.to_re ".")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)