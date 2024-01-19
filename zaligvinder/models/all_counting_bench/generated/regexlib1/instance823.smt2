;test regex (^([1-9]|[1][0-2]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3]):([0-5][0-9])$)|(^([1-9]|[1][0-2])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])$)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re ":") (re.++ (re.++ (re.range "0" "5") (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "P") (str.to_re "M"))) (re.++ (str.to_re "a") (str.to_re "m"))) (re.++ (str.to_re "p") (str.to_re "m"))) (re.++ (str.to_re "a") (str.to_re "M"))) (re.++ (str.to_re "A") (str.to_re "m"))) (re.++ (str.to_re "p") (str.to_re "M"))) (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m"))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9"))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "P") (str.to_re "M"))) (re.++ (str.to_re "a") (str.to_re "m"))) (re.++ (str.to_re "p") (str.to_re "m"))) (re.++ (str.to_re "a") (str.to_re "M"))) (re.++ (str.to_re "A") (str.to_re "m"))) (re.++ (str.to_re "p") (str.to_re "M"))) (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "3")))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)