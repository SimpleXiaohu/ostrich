;test regex \d{3}\Q(a.o.e).u.i.y\E\w+
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "Q") (re.++ (re.++ (str.to_re "a") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "o") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "e"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "u") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "i") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "y") (re.++ (str.to_re "E") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)