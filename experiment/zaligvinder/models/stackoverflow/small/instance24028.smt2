;test regex \(?\+[0-9]{1,3}\)? ?-?[0-9]{1,3} ?-?[0-9]{3,5} ?-?[0-9]{4}( ?-?[0-9]{3})? ?(\w{1,10}\s?\d{1,6})?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "(")) (re.++ (str.to_re "+") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re " ")) (re.opt (re.++ ((_ re.loop 1 10) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 6) (re.range "0" "9"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)