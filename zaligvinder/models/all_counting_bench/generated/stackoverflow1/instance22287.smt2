;test regex (C:.tmp.bd.*?)+(([a-zA-Z0-9_]+\.)+[a-zA-Z]{2,4})+(.+[a-zA-Z0-9_])
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.++ (str.to_re "C") (re.++ (str.to_re ":") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "b") (re.++ (str.to_re "d") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))) (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "."))) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)