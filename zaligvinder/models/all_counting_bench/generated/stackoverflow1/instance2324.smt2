;test regex (^[T|t]{1}[-|+][1-9][0-9]$)|(^[T|t]{1}[-|+][1-9]$)|^[T|t]$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "T") (re.union (str.to_re "|") (str.to_re "t")))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "+"))) (re.++ (re.range "1" "9") (re.range "0" "9"))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "T") (re.union (str.to_re "|") (str.to_re "t")))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "+"))) (re.range "1" "9")))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.union (str.to_re "T") (re.union (str.to_re "|") (str.to_re "t")))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)