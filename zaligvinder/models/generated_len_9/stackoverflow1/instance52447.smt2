;test regex pat="^(lo){3}(l[^o]|[^l].)"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (str.to_re "\u{22}"))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "l") (str.to_re "o"))) (re.++ (re.union (re.++ (str.to_re "l") (re.diff re.allchar (str.to_re "o"))) (re.++ (re.diff re.allchar (str.to_re "l")) (re.diff re.allchar (str.to_re "\n")))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)