;test regex r'(100\.00%.*){3}'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "100") (re.++ (str.to_re ".") (re.++ (str.to_re "00") (re.++ (str.to_re "%") (re.* (re.diff re.allchar (str.to_re "\n")))))))) (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)