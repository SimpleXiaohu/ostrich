;test regex ^[A-Z][a-z]+\.(?:jpg|png|gif),(?: [A-Z][a-z]+\.(?:jpg|png|gif),){3,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "g")))) (re.++ (str.to_re "g") (re.++ (str.to_re "i") (str.to_re "f")))))))) (re.++ (str.to_re ",") (re.++ (re.* (re.++ (re.++ (str.to_re " ") (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "g")))) (re.++ (str.to_re "g") (re.++ (str.to_re "i") (str.to_re "f")))))))) (str.to_re ","))) ((_ re.loop 3 3) (re.++ (re.++ (str.to_re " ") (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))) (re.++ (str.to_re "p") (re.++ (str.to_re "n") (str.to_re "g")))) (re.++ (str.to_re "g") (re.++ (str.to_re "i") (str.to_re "f")))))))) (str.to_re ",")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)