;test regex ^.*<Elem1>([^<]{46,})</
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "E") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "1") (re.++ (str.to_re ">") (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "<"))) ((_ re.loop 46 46) (re.diff re.allchar (str.to_re "<")))) (re.++ (str.to_re "<") (str.to_re "/"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)