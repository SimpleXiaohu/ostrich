;test regex [:digit:]{4}\-[:digit:]{2}\-[:digit]{2}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (str.to_re ":") (re.union (str.to_re "d") (re.union (str.to_re "i") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "t") (str.to_re ":")))))))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (str.to_re "d") (re.union (str.to_re "i") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "t") (str.to_re ":")))))))) (re.++ (str.to_re "-") ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (str.to_re "d") (re.union (str.to_re "i") (re.union (str.to_re "g") (re.union (str.to_re "i") (str.to_re "t")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)