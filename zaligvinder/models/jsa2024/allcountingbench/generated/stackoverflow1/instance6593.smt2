;test regex \({0,1}ByVal ([^ ]*) As([^,\)]*[\)]{0,1})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (str.to_re "(")) (re.++ (str.to_re "B") (re.++ (str.to_re "y") (re.++ (str.to_re "V") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (re.* (re.diff re.allchar (str.to_re " "))) (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "s") (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re ",")) (re.diff re.allchar (str.to_re ")")))) ((_ re.loop 0 1) (str.to_re ")"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)