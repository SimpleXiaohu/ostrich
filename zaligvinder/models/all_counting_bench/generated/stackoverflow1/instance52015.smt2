;test regex ^(?:\d{1,3} ?GB)|(?:\d{1,2}(?:\.\d{1,2})? ?TB)$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re "G") (str.to_re "B"))))) (re.++ (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re "T") (str.to_re "B"))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)