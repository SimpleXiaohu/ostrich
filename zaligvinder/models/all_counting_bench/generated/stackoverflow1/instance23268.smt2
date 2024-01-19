;test regex ^([^A-Za-z]{1})([^A-Za-z0-9-.]{0,32})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.diff re.allchar (re.range "a" "z")))) ((_ re.loop 0 32) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.inter (re.diff re.allchar (str.to_re "-")) (re.diff re.allchar (str.to_re "."))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)