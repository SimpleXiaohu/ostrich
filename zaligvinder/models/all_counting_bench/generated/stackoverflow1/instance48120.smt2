;test regex (?:Active Phone Lines:|\\G)[\\s,]*([0-9]{4})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "P") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re ":"))))))))))))))))))) (re.++ (str.to_re "\\") (str.to_re "G"))) (re.++ (re.* (re.union (str.to_re "\\") (re.union (str.to_re "s") (str.to_re ",")))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)