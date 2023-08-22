;test regex /^\(\+\d+\)[\/\. \-]\(?\d{3}\)?[\/\. \-][\d\- \.\/]{7,11}$/m
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (str.to_re "(") (re.++ (str.to_re "+") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ (re.union (str.to_re "/") (re.union (str.to_re ".") (re.union (str.to_re " ") (str.to_re "-")))) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.union (str.to_re "/") (re.union (str.to_re ".") (re.union (str.to_re " ") (str.to_re "-")))) ((_ re.loop 7 11) (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re " ") (re.union (str.to_re ".") (str.to_re "/"))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "m"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)