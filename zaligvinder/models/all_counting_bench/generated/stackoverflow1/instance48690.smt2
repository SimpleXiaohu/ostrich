;test regex \d{1,4}\.?\d{0,2} | \d{5}\.?\d |\d{6}
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (re.opt (str.to_re ".")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re " ")))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.opt (str.to_re ".")) (re.++ (re.range "0" "9") (str.to_re " ")))))) ((_ re.loop 6 6) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)