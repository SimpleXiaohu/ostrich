;test regex ^\h{2,}(\d*)\h*<\?\h*(\d\.\d{2})\h*-\h*\(multi\)\h*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ (re.* (str.to_re "h")) ((_ re.loop 2 2) (str.to_re "h"))) (re.++ (re.* (re.range "0" "9")) (re.++ (re.* (str.to_re "h")) (re.++ (str.to_re "<") (re.++ (str.to_re "?") (re.++ (re.* (str.to_re "h")) (re.++ (re.++ (re.range "0" "9") (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.* (str.to_re "h")) (re.++ (str.to_re "-") (re.++ (re.* (str.to_re "h")) (re.++ (str.to_re "(") (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re ")") (re.* (str.to_re "h"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)