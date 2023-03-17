;test regex t=(?:(?:\d{1,2}h)?\d{1,2}m)?\d{1,2}s
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.++ (re.opt (re.++ (re.opt (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "h"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "m")))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "s")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)