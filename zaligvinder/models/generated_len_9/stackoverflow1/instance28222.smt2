;test regex  (?:AAT|AT|T|) (?:AAAT){3,} (:?AAA|AA|A|) 
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "") (re.union (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "A") (str.to_re "T"))) (re.++ (str.to_re "A") (str.to_re "T"))) (str.to_re "T"))) (str.to_re "")) (re.++ (str.to_re " ") (re.++ (re.++ (re.* (re.++ (str.to_re "A") (re.++ (str.to_re "A") (re.++ (str.to_re "A") (str.to_re "T"))))) ((_ re.loop 3 3) (re.++ (str.to_re "A") (re.++ (str.to_re "A") (re.++ (str.to_re "A") (str.to_re "T")))))) (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "") (re.union (re.union (re.++ (re.opt (str.to_re ":")) (re.++ (str.to_re "A") (re.++ (str.to_re "A") (str.to_re "A")))) (re.++ (str.to_re "A") (str.to_re "A"))) (str.to_re "A"))) (str.to_re "")) (str.to_re " ")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)