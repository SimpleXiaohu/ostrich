;test regex SELECT "Stringy : 3 / 5" REGEXP '[ ]{0,2}Stringy(: | : )';
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (str.to_re "3") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "5") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 0 2) (str.to_re " ")) (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "y") (re.++ (re.union (re.++ (str.to_re ":") (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re ":") (str.to_re " ")))) (re.++ (str.to_re "\u{27}") (str.to_re ";"))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)