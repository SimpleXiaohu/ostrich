;test regex ^([\+|\(]{1,2})?+(\d{2,4})+([ |-|\)]{1,2})?+(\d{2,3})+([ |-]{1})?+(\d{2,3})+([ |-]{1})?+(\d{2,3})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.opt ((_ re.loop 1 2) (re.union (str.to_re "+") (re.union (str.to_re "|") (str.to_re "(")))))) (re.++ (re.+ ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ (re.+ (re.opt ((_ re.loop 1 2) (re.union (str.to_re " ") (re.union (str.to_re "|") (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re ")")))))))) (re.++ (re.+ ((_ re.loop 2 3) (re.range "0" "9"))) (re.++ (re.+ (re.opt ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "|") (str.to_re "-")))))) (re.++ (re.+ ((_ re.loop 2 3) (re.range "0" "9"))) (re.++ (re.+ (re.opt ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "|") (str.to_re "-")))))) (re.opt ((_ re.loop 2 3) (re.range "0" "9"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)