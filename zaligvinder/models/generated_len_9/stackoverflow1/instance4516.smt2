;test regex [JjYy]{0}|[JjYy]{2}|[JjYy]{4}[0]{3,10}
(declare-const X String)
(assert (str.in_re X (re.union (re.union ((_ re.loop 0 0) (re.union (str.to_re "J") (re.union (str.to_re "j") (re.union (str.to_re "Y") (str.to_re "y"))))) ((_ re.loop 2 2) (re.union (str.to_re "J") (re.union (str.to_re "j") (re.union (str.to_re "Y") (str.to_re "y")))))) (re.++ ((_ re.loop 4 4) (re.union (str.to_re "J") (re.union (str.to_re "j") (re.union (str.to_re "Y") (str.to_re "y"))))) ((_ re.loop 3 10) (str.to_re "0"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)