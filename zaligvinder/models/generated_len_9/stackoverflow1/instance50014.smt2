;test regex POLL\s+([adm]{10})\s+(yes|no)\s+([a-z. ]+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "P") (re.++ (str.to_re "O") (re.++ (str.to_re "L") (re.++ (str.to_re "L") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 10 10) (re.union (str.to_re "a") (re.union (str.to_re "d") (str.to_re "m")))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.++ (str.to_re "y") (re.++ (str.to_re "e") (str.to_re "s"))) (re.++ (str.to_re "n") (str.to_re "o"))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.+ (re.union (re.range "a" "z") (re.union (str.to_re ".") (str.to_re " ")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)