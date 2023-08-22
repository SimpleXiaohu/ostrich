;test regex /s:([^ ]{1,100}) /e:([^ ]{1,100}) /f:([^ ]{1,100})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 100) (re.diff re.allchar (str.to_re " "))) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 100) (re.diff re.allchar (str.to_re " "))) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "f") (re.++ (str.to_re ":") ((_ re.loop 1 100) (re.diff re.allchar (str.to_re " "))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)