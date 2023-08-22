;test regex ^.*[xX][tT][nN][dD][^\u{0a}]{50}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "x") (str.to_re "X")) (re.++ (re.union (str.to_re "t") (str.to_re "T")) (re.++ (re.union (str.to_re "n") (str.to_re "N")) (re.++ (re.union (str.to_re "d") (str.to_re "D")) ((_ re.loop 50 50) (re.diff re.allchar (str.to_re "\u{0a}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)