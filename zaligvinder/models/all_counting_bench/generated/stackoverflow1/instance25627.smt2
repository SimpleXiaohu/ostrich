;test regex [Rr][Gg][Bb][Aa][\(](((([\d]{1,3}|[\d\.]{1,3})[\,]{0,1})[\s]*){4})[\)]
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 4 4) (re.++ (re.++ (re.union ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 1 3) (re.union (re.range "0" "9") (str.to_re ".")))) ((_ re.loop 0 1) (str.to_re ","))) (re.* (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (str.to_re ")")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)