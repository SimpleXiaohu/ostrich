;test regex lasts{0,1}.*?(\d).*?doggs
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ ((_ re.loop 0 1) (str.to_re "s")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.range "0" "9") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "g") (str.to_re "s")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)