;test regex ^(([01]{2})*|1*(01*01*)*)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.* ((_ re.loop 2 2) (str.to_re "01"))) (re.++ (re.* (str.to_re "1")) (re.* (re.++ (re.* (str.to_re "01")) (re.* (str.to_re "01"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)