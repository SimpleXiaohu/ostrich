;test regex [GATC]{5,}\n
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.union (str.to_re "G") (re.union (str.to_re "A") (re.union (str.to_re "T") (str.to_re "C"))))) ((_ re.loop 5 5) (re.union (str.to_re "G") (re.union (str.to_re "A") (re.union (str.to_re "T") (str.to_re "C")))))) (str.to_re "\u{0a}"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)