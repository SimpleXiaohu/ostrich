;test regex ('.$this->reg['wat'].'){0,7}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 0 7) (re.++ (re.++ (str.to_re "\u{27}") (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "-") (re.++ (str.to_re ">") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (re.union (str.to_re "\u{27}") (re.union (str.to_re "w") (re.union (str.to_re "a") (re.union (str.to_re "t") (str.to_re "\u{27}"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "\u{27}")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)