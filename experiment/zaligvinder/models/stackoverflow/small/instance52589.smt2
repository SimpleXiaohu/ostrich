;test regex \*{2}Header2\*{2} *\n([^*]+)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (str.to_re "*")) (re.++ (str.to_re "H") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "2") (re.++ ((_ re.loop 2 2) (str.to_re "*")) (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "\u{0a}") (re.+ (re.diff re.allchar (str.to_re "*"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)