;test regex ^(%(n|m|p):{0,1}){0,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.++ (str.to_re "%") (re.++ (re.union (re.union (str.to_re "n") (str.to_re "m")) (str.to_re "p")) ((_ re.loop 0 1) (str.to_re ":"))))) ((_ re.loop 0 0) (re.++ (str.to_re "%") (re.++ (re.union (re.union (str.to_re "n") (str.to_re "m")) (str.to_re "p")) ((_ re.loop 0 1) (str.to_re ":"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)