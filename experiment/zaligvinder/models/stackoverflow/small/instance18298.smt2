;test regex \[begin page (?:[A-Z]{1,2}|\d{1,3})\]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (re.union ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "]"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)