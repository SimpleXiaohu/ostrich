;test regex ^(Jan|Feb|Mar|Apr|May|Jun|Jul|Apr|Sep|Oct|Nov|Dec)\s{1}\d{1,2},\s{1}\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "a") (str.to_re "n"))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (str.to_re "t")))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (str.to_re "c")))) (re.++ ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)