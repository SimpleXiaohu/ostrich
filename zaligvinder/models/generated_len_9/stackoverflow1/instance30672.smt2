;test regex ^pa[s5$][s5$]w[o0]rd.\d{3,6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (re.union (str.to_re "s") (re.union (str.to_re "5") (str.to_re "$"))) (re.++ (re.union (str.to_re "s") (re.union (str.to_re "5") (str.to_re "$"))) (re.++ (str.to_re "w") (re.++ (re.union (str.to_re "o") (str.to_re "0")) (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 3 6) (re.range "0" "9")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)