;test regex :%s/(\d{2}.)+jpg/$1png/g
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re ":") (re.++ (str.to_re "%") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.+ (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ (str.to_re "g") (str.to_re "/"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "p") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "/") (str.to_re "g"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)