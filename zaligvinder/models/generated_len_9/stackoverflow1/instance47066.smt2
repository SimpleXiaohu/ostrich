;test regex m/ \A (.+\/) (.+\d\d\d\d) .+ ([.]\w{3}) \z/ixms
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "m") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re " ") (re.++ (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (str.to_re "/")) (re.++ (str.to_re " ") (re.++ (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9"))))) (re.++ (str.to_re " ") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re " ") (re.++ (str.to_re "z") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "x") (re.++ (str.to_re "m") (str.to_re "s")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)