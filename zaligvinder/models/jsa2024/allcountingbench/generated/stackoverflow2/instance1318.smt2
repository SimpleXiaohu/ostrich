;test regex ^\d{3}-\d{7}$|^\d{10}$|^[+46]\s\d{3}-\d{7}$|^[+]\d{46}\s\d{10}$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9"))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "+") (str.to_re "46")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "+") (re.++ ((_ re.loop 46 46) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 10 10) (re.range "0" "9")))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)