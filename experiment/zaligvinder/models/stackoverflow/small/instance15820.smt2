;test regex (Price.+\sSGD\$\d+\.\d{2})|(SGD\$\d+\.\d{2})|(SGD\$\d+)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "P") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "G") (re.++ (str.to_re "D") (re.++ (str.to_re "$") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "G") (re.++ (str.to_re "D") (re.++ (str.to_re "$") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "G") (re.++ (str.to_re "D") (re.++ (str.to_re "$") (re.+ (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)