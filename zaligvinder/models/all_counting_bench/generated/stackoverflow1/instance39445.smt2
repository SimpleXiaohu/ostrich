;test regex <string svars="3">(?:total ?|)(\d{1,2}(?:[\.,]\d{1,2}|))\/(\d{1,2}(?:[\.,]\d{1,2}|))\/(\d{1,2}(?:[\.,]\d{1,2}|))\s?sq\.\s?m\.?</string>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "3") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ">") (re.++ (re.union (re.++ (str.to_re "") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.opt (str.to_re " ")))))))) (str.to_re "")) (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "") (re.++ (re.union (str.to_re ".") (str.to_re ",")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ""))) (re.++ (str.to_re "/") (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "") (re.++ (re.union (str.to_re ".") (str.to_re ",")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ""))) (re.++ (str.to_re "/") (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "") (re.++ (re.union (str.to_re ".") (str.to_re ",")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ""))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "q") (re.++ (str.to_re ".") (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "m") (re.++ (re.opt (str.to_re ".")) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (str.to_re ">"))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)