;test regex (actual (lat|lon) (\d+(.\d{1,6})))|((\d+(.\d{1,6})) (lat|lon))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "t"))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (str.to_re "n")))) (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 6) (re.range "0" "9"))))))))))))) (re.++ (re.++ (re.+ (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 6) (re.range "0" "9")))) (re.++ (str.to_re " ") (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "t"))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (str.to_re "n")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)