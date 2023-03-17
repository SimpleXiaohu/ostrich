;test regex [0-9]{1,2}(?:st|th|nd)?\s*(?:[-]\s*[0-9]{1,2}(?:st|th|nd)?)?\s+(?:Jan\.|Feb\.|March|April|May|Juny|July|Aug\.|Sept\.|Oct.|Nov\.|Dec\.),?\s*[0-9]{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.opt (re.union (re.union (re.++ (str.to_re "s") (str.to_re "t")) (re.++ (str.to_re "t") (str.to_re "h"))) (re.++ (str.to_re "n") (str.to_re "d")))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (re.++ (str.to_re "-") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.union (re.++ (str.to_re "s") (str.to_re "t")) (re.++ (str.to_re "t") (str.to_re "h"))) (re.++ (str.to_re "n") (str.to_re "d")))))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (str.to_re ".")))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (str.to_re "."))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (str.to_re "h")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (str.to_re "l")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "y"))))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (str.to_re "y"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (str.to_re "."))))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (str.to_re ".")))))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (str.to_re "."))))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (str.to_re ".")))))))))) (re.++ (re.opt (str.to_re ",")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 4 4) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)