;test regex ^[S|XS|XL|M|L\|]{1,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (str.to_re "S") (re.union (str.to_re "|") (re.union (str.to_re "X") (re.union (str.to_re "S") (re.union (str.to_re "|") (re.union (str.to_re "X") (re.union (str.to_re "L") (re.union (str.to_re "|") (re.union (str.to_re "M") (re.union (str.to_re "|") (re.union (str.to_re "L") (str.to_re "|"))))))))))))) ((_ re.loop 1 1) (re.union (str.to_re "S") (re.union (str.to_re "|") (re.union (str.to_re "X") (re.union (str.to_re "S") (re.union (str.to_re "|") (re.union (str.to_re "X") (re.union (str.to_re "L") (re.union (str.to_re "|") (re.union (str.to_re "M") (re.union (str.to_re "|") (re.union (str.to_re "L") (str.to_re "|"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)