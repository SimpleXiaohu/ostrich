;test regex /^[\d]{1,2}\/[\d]{1,2}\/[\d]{4}(\s[\d]{1,2}:[\d]{1,2} (am|pm))?/gi
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.union (re.++ (str.to_re "a") (str.to_re "m")) (re.++ (str.to_re "p") (str.to_re "m"))))))))) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "i")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)