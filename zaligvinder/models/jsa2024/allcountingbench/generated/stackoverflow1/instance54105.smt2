;test regex (((see) (north|south|west|east))|((sell|buy) ([1-9][0-9]{0,2}) (wood)))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "e"))) (re.++ (str.to_re " ") (re.union (re.union (re.union (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (str.to_re "h"))))) (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (str.to_re "h")))))) (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "t"))))) (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "t"))))))) (re.++ (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (str.to_re "l")))) (re.++ (str.to_re "b") (re.++ (str.to_re "u") (str.to_re "y")))) (re.++ (str.to_re " ") (re.++ (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "d")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)