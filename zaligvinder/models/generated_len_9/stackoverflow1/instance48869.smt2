;test regex ^(reg)_(no) [0-9]{2}[(BS)|(MS)]{2}[(CS)|(SE)]{2}\-[0-9]{1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "g"))) (re.++ (str.to_re "_") (re.++ (re.++ (str.to_re "n") (str.to_re "o")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "(") (re.union (str.to_re "B") (re.union (str.to_re "S") (re.union (str.to_re ")") (re.union (str.to_re "|") (re.union (str.to_re "(") (re.union (str.to_re "M") (re.union (str.to_re "S") (str.to_re ")")))))))))) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "(") (re.union (str.to_re "C") (re.union (str.to_re "S") (re.union (str.to_re ")") (re.union (str.to_re "|") (re.union (str.to_re "(") (re.union (str.to_re "S") (re.union (str.to_re "E") (str.to_re ")")))))))))) (re.++ (str.to_re "-") ((_ re.loop 1 1) (re.range "0" "9"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)