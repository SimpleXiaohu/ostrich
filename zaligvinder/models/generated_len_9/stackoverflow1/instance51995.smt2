;test regex [G|F]\d{1,2}-[a-z]+-pc\d{1,2}.+
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "G") (re.union (str.to_re "|") (str.to_re "F"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "c") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.+ (re.diff re.allchar (str.to_re "\n")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)