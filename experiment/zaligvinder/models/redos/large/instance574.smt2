;test regex (?:charset|encoding)\s{0,10}=\s{0,10}[']? {0,10}([\w\-]{1,100})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "t"))))))) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "g"))))))))) (re.++ ((_ re.loop 0 10) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "=") (re.++ ((_ re.loop 0 10) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (str.to_re "\u{27}")) (re.++ ((_ re.loop 0 10) (str.to_re " ")) ((_ re.loop 1 100) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)