;test regex (^| |.|;|:|,)[Cc]asenumbers? ?: ?[0-9]{7,8} ?(([;:,\.]|and) ?[0-9]{7,8})*
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "") (str.to_re " ")) (re.diff re.allchar (str.to_re "\n"))) (str.to_re ";")) (str.to_re ":")) (str.to_re ",")) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (re.opt (str.to_re "s")) (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re ":") (re.++ (re.opt (str.to_re " ")) (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (re.++ (re.opt (str.to_re " ")) (re.* (re.++ (re.union (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re ",") (str.to_re ".")))) (re.++ (str.to_re "a") (re.++ (str.to_re "n") (str.to_re "d")))) (re.++ (re.opt (str.to_re " ")) ((_ re.loop 7 8) (re.range "0" "9"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)