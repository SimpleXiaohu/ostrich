;test regex ^\d?(?:(?:[\+]?(?:[\d]{1,3}(?:[ ]+|[\-.])))?[(]?(?:[\d]{3})[\-/)]?(?:[ ]+)?)?(?:[a-zA-Z2-9][a-zA-Z0-9 \-.]{6,})(?:(?:[ ]+|[xX]|(i:ext[\.]?)){1,2}(?:[\d]{1,5}))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.+ (str.to_re " ")) (re.union (str.to_re "-") (str.to_re ".")))))) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re "-") (re.union (str.to_re "/") (str.to_re ")")))) (re.opt (re.+ (str.to_re " ")))))))) (re.++ (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "2" "9"))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "-") (str.to_re "."))))))) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "-") (str.to_re "."))))))))) (re.opt (re.++ ((_ re.loop 1 2) (re.union (re.union (re.+ (str.to_re " ")) (re.union (str.to_re "x") (str.to_re "X"))) (re.++ (str.to_re "i") (re.++ (str.to_re ":") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.opt (str.to_re "."))))))))) ((_ re.loop 1 5) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)