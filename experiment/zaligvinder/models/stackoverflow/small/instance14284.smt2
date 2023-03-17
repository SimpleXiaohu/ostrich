;test regex Find "(dog)((?:.*[\r\n]+){25})(\w.*)"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "F") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "g"))) (re.++ ((_ re.loop 25 25) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))))) (re.++ (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.* (re.diff re.allchar (str.to_re "\n")))) (str.to_re "\u{22}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)