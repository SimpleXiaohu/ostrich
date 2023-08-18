;test regex ((13th|(Executive |Residential)|((\w+) ){1,3})Floor)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re "13") (re.++ (str.to_re "t") (str.to_re "h"))) (re.union (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re " ")))))))))) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "a") (str.to_re "l"))))))))))))) ((_ re.loop 1 3) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re " ")))) (re.++ (str.to_re "F") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "r"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)