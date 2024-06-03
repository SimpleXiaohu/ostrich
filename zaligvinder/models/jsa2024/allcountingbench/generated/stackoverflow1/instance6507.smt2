;test regex \(Price([+-]\d+%?){1,3}\)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "(") (re.++ (str.to_re "P") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ ((_ re.loop 1 3) (re.++ (re.union (str.to_re "+") (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re "%"))))) (str.to_re ")"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)